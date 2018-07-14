#!/home/prathameshn/bin/perl/bin/perl -w

use strict;
use warnings;

print "NOTE :: PRESS <CTRL + D> and then press <ENTER> after providing input to the script \n";
print "Warning :: Invalid inputs will produce unpredictable results!!! \n";

my @line = <STDIN>;                
my @temp = @line;
my $entries = $#line + 1;
my $i;
my $j = 0;
my $temp1;
my $cwwpn = "";
my @wwpnconv;
my $lcwwpn;

#print "This script inserts ":" symbol in a wwpn number \n ";
#print "Warning :: Invalid inputs will produce unpredictable results!!! \n";

print "you have entered $entries entries \n";

for ($i=0; $i<=$#line; $i++)
{
	for ( $j=0; $j<=14; $j += 2 )
	{
		$temp1 = substr("$temp[$i]",$j,2);
		if ($j == 0) 
		{
			$cwwpn = $temp1;
		}
	else 
		{
		$cwwpn = $cwwpn . ':' . $temp1;
		}
	};
$lcwwpn = lc $cwwpn;			#convert upper to lower case
$wwpnconv[$i] = $lcwwpn;           #
print "$wwpnconv[$i] \n";
}

getc;

