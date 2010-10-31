use strict;
use vars qw/$ModulesDescription $ModuleDir $PageInCatalog $ModuleXRZPage $ModuleXRZDebug $PageDirectoryBase $PageFileExt $PageDirSubExp $KeepDirSubExp $PageDir $KeepDir $DataDir $FSEncodingName/;

unless($ModuleXRZPage) {
$ModulesDescription .= '<p>$Id: xrzpage.pl,v 0.1 2009/08/21  $<br />   -   Map page Id to filesystem structure</p>';

$ModuleXRZPage = 1;
$PageDirectoryBase = undef;
$PageFileExt = undef;
$PageInCatalog = 0;


do "$ModuleDir/xrzdebug.pl" unless($ModuleXRZDebug);
do "$ModuleDir/xrzio.pl" if($FSEncodingName);

sub _CleanPath {
    my $r = shift;
    &xrz_debug_log("CleanPath: [$r] ===>");
    $r =~ s/[\\\/\:]+/\//go;
    &xrz_debug_log(" [$r]\n");
    return $r;
}

sub _BaseName {
    return unless($_[0]);
    my $id = $_[0];
    $id =~ s/(?:^.*[\/\\:]+|[\/:\\]+$)//;
    &xrz_debug_log("_BaseName:@_===>$id\n");
    return $id;
}

sub ExMakeDir {
    return unless(@_);
    my @parts = split('/',$_[0]);
    my $dir = shift @parts;
    &xrz_debug_log("ExMakeDir $dir\n") if($dir);
    CreateDir($dir) if($dir);
    foreach(@parts) {
        $dir .= '/' . $_;
    &xrz_debug_log("ExMakeDir $dir\n");
        CreateDir($dir);
    }
}

&xrz_debug_hook("GetPageFile","GetPageDirectory","CreateKeepDir","CreatePageDir");
sub NewCreatePageDir {
  my ($dir, $id) = @_;
  &xrz_debug_log("CreatePageDir:[$dir] :$id\n");
  ExMakeDir($dir . '/' . &NewGetPageDirectory($id));
}
sub NewCreateKeepDir {
  my ($dir, $id) = @_;
  &xrz_debug_log("CreateKeepDir $id\n");
  return ExMakeDir($dir . '/' . _CleanPath($id));
}
sub NewGetPageFile {
    return unless($_[0]);
    my $r =  $PageDir . "/" . _CleanPath($_[0])  . ($PageFileExt ? $PageFileExt : ".pg");
    &xrz_debug_log("GetPageFile:$_[0]====>$r\n");
    return $r;
}
sub NewGetPageDirectory {
    return "" unless($_[0]);
    my $id = $_[0];
    $id =~ s/:+/\//g;
    $id =~ s/^\/+//g;
    if($id =~ /\//) {
       $id =~ s/\/[^\/]*$//g;
    }
    else {
        $id = "";
    }
    &xrz_debug_log("GetPageDirectory:@_==>$id\n");
    return "$id";
}

&xrz_debug_hook("GetKeepFile");
sub NewGetKeepFile {
  my ($id, $revision) = @_; die 'No revision' unless $revision; #FIXME
  my $r = $KeepDir . '/' . _CleanPath($id) . "/$revision.kp";
  &xrz_debug_log("GetKeepFile:@_===>$r\n");
  return $r;
}
&xrz_debug_hook("GetKeepDir");
sub NewGetKeepDir {
  my $id = shift; die 'No id' unless $id;
  my $r = $KeepDir . '/' . _CleanPath($id);
  &xrz_debug_log("GetKeepDir:$r\n");
  return $r;
}
&xrz_debug_hook("GetKeepFiles");
sub NewGetKeepFiles {
    my $id = shift;
    my @files = glob(NewGetKeepDir($id) . "/*.kp");
    &xrz_debug_log("GetKeepFiles: $id====>@files\n");
    if($FSEncodingName && @files) {
        map {$_ = _from_to($_,$FSEncodingName,"utf8");$_} @files;
    }
    &xrz_debug_log("GetKeepFiles: @files\n");
    return @files;
}

&xrz_debug_hook("GetLockedPageFile");
sub NewGetLockedPageFile {
  my $id = shift;
  return $PageDir . '/' . _CleanPath($id) .  ".lck";
}




}

1;

