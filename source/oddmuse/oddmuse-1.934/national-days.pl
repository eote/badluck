# Copyright (C) 2004  Alex Schroeder <alex@emacswiki.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the
#    Free Software Foundation, Inc.
#    59 Temple Place, Suite 330
#    Boston, MA 02111-1307 USA

$ModulesDescription .= '<p>$Id: national-days.pl,v 1.1 2004/05/15 12:28:22 as Exp $</p>';

%SpecialDays = (
   '1-1' => 'Sudan, National Day, Haiti, Independence Day, Cuba, Liberation Day',
   '1-4' => 'Myanmar, Independence Day',
   '1-9' => 'Northern Mariana Islands, National Day',
   '1-26' => 'Australia, Australia Day',
   '1-31' => 'Nauru, National Day',
   '2-4' => 'Sri Lanka, Independence Commemoration Day',
   '2-6' => 'New Zealand, Waitangi Day',
   '2-7' => 'Grenada, Independence Day',
   '2-11' => 'Iran, Victory of the Islamic Revolution in Iran',
   '2-16' => 'Lithuania, Independence Day',
   '2-18' => 'Gambia, National Day',
   '2-22' => 'St Lucia, National Day',
   '2-23' => 'Guyana, National Day, Brunei Darussalam, National Day',
   '2-24' => 'Estonia, Independence Day',
   '2-25' => 'Kuwait, National Day',
   '2-27' => 'Dominican Republic, Independence Day',
   '3-3' => 'Bulgaria, National Day',
   '3-6' => 'Ghana, Independence Day',
   '3-12' => 'Mauritius, National Day',
   '3-17' => 'Ireland, St Patrick\'s Day',
   '3-20' => 'Tunisia, Anniversary of the Independence of the Republic of Tunisia',
   '3-21' => 'Namibia, Independence Day',
   '3-23' => 'Pakistan, National Day',
   '3-25' => 'Greece, Independence Day',
   '3-26' => 'Bangladesh, Independence Day',
   '4-4' => 'Senegal, Independence Day',
   '4-16' => 'Denmark, Queen\'s Birthday',
   '4-17' => 'Syria, National Day',
   '4-18' => 'Zimbabwe, National Day',
   '4-19' => 'Sierra Leone, Republic Day',
   '4-26' => 'Tanzania, Union Day, Israel, Independence Day',
   '4-27' => 'Federal Republic of Yugoslavia, National Day, Togo, Togolais National Day, South Africa, Freedom Day',
   '4-30' => 'The Netherlands, Official Birthday of Her Majesty Queen Beatrix',
   '5-1' => 'Marshall Islands, National Day',
   '5-3' => 'Poland, National Day',
   '5-9' => 'European Union, Europe Day',
   '5-15' => 'Paraguay, National Day',
   '5-17' => 'Norway, Constitution Day',
   '5-20' => 'Cameroon, National Day',
   '5-22' => 'Yemen, National Day',
   '5-24' => 'Eritrea, Independence Day',
   '5-25' => 'Jordan, Independence Day, Argentina, National Day',
   '5-26' => 'Georgia, National Day',
   '5-28' => 'Ethiopia, National Day, Azerbaijan, National Day',
   '6-1' => 'Samoa, Independence Day',
   '6-2' => 'Italy, Foundation of the Republic',
   '6-4' => 'Tonga, Emancipation Day',
   '6-6' => 'Sweden, National Day',
   '6-10' => 'Portugal, Portugal Day, Camões Day and Day of Portuguese Communities',
   '6-12' => 'Philippines, Independence Day, Russia, National Day',
   '6-17' => 'Iceland, National Day',
   '6-18' => 'Seychelles, National Day',
   '6-23' => 'Luxembourg, National Day and Official Birthday of  H.R.H. the Grand Duke',
   '6-25' => 'Croatia, National Day, Slovenia, National Day, Mozambique, Independence Day',
   '6-26' => 'Madagascar, National Day',
   '6-27' => 'Djibouti, Independence Day',
   '6-30' => 'The Democratic Republic of the Congo, Independence Day',
   '7-1' => 'Burundi, National Day, Canada, Canada Day',
   '7-3' => 'Belarus, National Day',
   '7-4' => 'United States of America, Independence Day',
   '7-5' => 'Rwanda, Liberation Day, Cape Verde, National Day, Venezuela, National Day',
   '7-6' => 'Malawi, National Day, Comoros, National Day',
   '7-7' => 'Nepal, King\'s Birthday and National Day, Solomon Islands, National Day',
   '7-10' => 'Bahamas, Independence Day',
   '7-11' => 'Mongolia, Anniversary of Mongolian People\'s Revolution',
   '7-12' => 'Sao Tome & Principe, National Day, Kiribati, National Day',
   '7-14' => 'France, Bastille Day',
   '7-17' => 'Iraq, National Day',
   '7-20' => 'Colombia, National Day',
   '7-21' => 'Belgium, Accession of King Leopold I (1831)',
   '7-23' => 'Egypt, Anniversary of Revolution of 23 July',
   '7-26' => 'Liberia, National Day, Maldives, National Day',
   '7-28' => 'Peru, Independence Day',
   '7-30' => 'Vanuatu, Independence Day, Morocco, Festival of the Throne',
   '8-1' => 'Benin, National Day, Switzerland, Foundation of the Swiss Confederation',
   '8-4' => 'Cook Islands, National Day',
   '8-5' => 'Jamaica, National Day',
   '8-6' => 'Bolivia, Independence Day',
   '8-7' => 'Cote D\'Ivoire, National Day',
   '8-9' => 'Singapore, National Day',
   '8-10' => 'Ecuador, National Day',
   '8-11' => 'Chad, National Day',
   '8-15' => 'Republic of Korea, National Day, Liechtenstein, National Day, India, National Day, The Republic of the Congo, Independence Day',
   '8-17' => 'Indonesia, Proclamation of Independence, Gabon, National Day',
   '8-19' => 'Afghanistan, Indenpendence Day',
   '8-20' => 'Hungary, National Day',
   '8-24' => 'Ukraine, National Day',
   '8-25' => 'Uruguay, Independence Day',
   '8-27' => 'Moldova, National Day',
   '8-31' => 'Kyrgyzstan, National Day, Trinidad and Tobago, National Day, Malaysia, National Day',
   '9-1' => 'Uzbekistan, National Day, Slovakia, Constitution Day',
   '9-2' => 'Vietnam, National Day, Libyan Arab Jamahiriya, National Day',
   '9-3' => 'Qatar, National Day, San Marino, National Foundation Day',
   '9-6' => 'Swaziland, National Day',
   '9-7' => 'Brazil, Independence Day',
   '9-8' => 'Andorra, National Day, Former Yugoslav Republic of Macedonia, Independence Day',
   '9-9' => 'Democratic People\'s Republic of Korea, National Day, Tajikistan, National Day',
   '9-15' => 'Guatemala, Independence Day, Honduras, Independence Day, El Salvador, Independence Day, Costa Rica, Independence Day, Nicaragua, Independence Day',
   '9-16' => 'Papua New Guinea, Independence Day, Mexico, Proclamation of Independence',
   '9-18' => 'Chile, National Day',
   '9-19' => 'St Kitts Nevis, Independence Day',
   '9-21' => 'Belize, National Day, Malta, Independence Day, Armenia, National Day',
   '9-22' => 'Republic of Mali, Proclamation of Independence',
   '9-23' => 'Saudi Arabia, National Day',
   '9-24' => 'Guinea Bissau, Independence Day',
   '9-30' => 'Botswana, National Day',
   '10-1' => 'Guinea, Independence Day, China, National Day, Palau, National Day, Tuvalu, Independence Day, Cyprus, National Day, Nigeria, National Day',
   '10-3' => 'Germany, National Day',
   '10-4' => 'Lesotho, National Day',
   '10-9' => 'Uganda, Independence Day',
   '10-10' => 'Fiji, National Day',
   '10-12' => 'Equatorial Guinea, Independence Day, Spain, National Day',
   '10-19' => 'Niue, National Day',
   '10-22' => 'Holy See, Anniversary, Pontifical Ministry of His Holiness Pope John Paul II',
   '10-24' => 'Zambia, Independence Day',
   '10-26' => 'Austria, National Day',
   '10-27' => 'Turkmenistan, National Day, St Vincent and the Grenadines, National Day',
   '10-28' => 'Czech Republic, National Day',
   '10-29' => 'Turkey, Republic Day',
   '11-1' => 'Antigua and Barbuda, National Day, Algeria, Anniversary of the Revolution',
   '11-3' => 'Panama, National Day, Dominica, National Day, Federated States of Micronesia, National Day',
   '11-9' => 'Cambodia, Independence Day',
   '11-11' => 'Angola, National Day',
   '11-18' => 'Oman, National Day, Latvia, Proclamation of Independence',
   '11-19' => 'Monaco, National Day',
   '11-22' => 'Lebanon, Independence Day',
   '11-25' => 'Bosnia and Herzegovina, Statehood Day, Suriname, National Day',
   '11-28' => 'Mauritania, National Day, Albania, National Day',
   '11-30' => 'Barbados, Independence Day',
   '12-1' => 'Romania, National Day, Central African Republic, National Day',
   '12-2' => 'United Arab Emirates, National Day, Laos, National Day',
   '12-5' => 'Thailand, The King\'s Birthday Anniversary',
   '12-6' => 'Finland, Independence Day',
   '12-11' => 'Burkina Faso, National Day',
   '12-12' => 'Kenya, Jamhuri Day',
   '12-16' => 'Bahrain, National Day, Kazakhstan, National Day',
   '12-17' => 'Bhutan, National Day',
   '12-18' => 'Niger, National Day',
   '12-23' => 'Japan, Emperor\'s Birthday',
               );