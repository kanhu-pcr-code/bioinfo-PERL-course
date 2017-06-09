## filter lines containing gene tag from Gff3 file

use strict;
use warnings;

if($ARGV[0] eq '-h' or $#ARGV<0){
 print STDERR "Script to read gff file\nUsage: perl $0 GFF\n";
 exit(1); ## terminate program here 
}

my $gff = $ARGV[0];
open F, "< $gff" or die "$!: $gff\n";
while(my $line=<F>){
 if($line=~m/^#/){ 	## if line starts with hash '#'
  next;				## skip to next iteration
 } 
 my @record = split /\t/,$line; # split the line into an array
 $"="\t";  # try disbale and see effect
 print "@record" if $record[2] eq 'gene';
 #$,="\t";  # comment prev. 2 lines and uncomment to see effect
 #print @record if $record[2] eq 'gene';
}
close F;
