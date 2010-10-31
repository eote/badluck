use vars qw/$ModuleFixGetId $ModuleXRZDebug $ModuleDir $DataDir $UsePathInfo $q/;

unless($ModuleFixGetId) {
use CGI::Util qw/unescape/;

$ModulesDescription .= '<p>$Id: xrzpageid.pl,v 0.1 2009/08/21 00:55:26 as Exp $</p>';
$ModuleFixGetId = 1;

do "$ModuleDir/xrzdebug.pl" unless($ModuleXRZDebug);
  
xrz_debug_hook("GetId");
xrz_debug_hook("ValidId");
xrz_debug_hook("UrlEncode");

sub NewUrlEncode {
    my $r = OldUrlEncode(@_);
    $r =~ s/\%3a/:/g;
    $r =~ s/\%2f/\//g;
    return $r;
}

sub NewValidId {
    my $id = shift;
    $id =~ s/[:\/]//g;
    #xrz_debug_log("ValidId: ID=$id\n");
    return OldValidId($id);
}

sub GetPathInfo {
    my $name = $ENV{SCRIPT_NAME};
    my $uri = unescape($ENV{REQUEST_URI});
    xrz_debug_log("SCRIPT_NAME=$name, REQUEST_URI=$uri ");
    if(substr($uri,0,length($name)) eq $name) {
        $uri = substr($uri,length($name));
    }
    $uri =~ s/\?.*$//;
    $uri =~ s/^\/+//;
#    $uri =~ s/^[^\/]+:\/\/[^\/]+\///;
    return $uri;
}

sub NewGetId {
#    my $name = $ENV{SCRIPT_NAME};
#    my $uri = unescape($ENV{REQUEST_URI});
    my $id = join("_",$q->keywords);
    if($UsePathInfo && !$id) {
        $id = GetPathInfo();
        #unless($id);
        #my @path = split(/\//,$uri);
        #$id = pop(@path) unless($id);
        #SetParam($_,1) foreach(@path);
    }
    $id = GetParam('id', GetParam('title', $id)); # id=x or title=x override
#    my @keywords = $q->keywords if($q);
    xrz_debug_log(", ID=$id","\n");
    return $id;
}

}

1;
