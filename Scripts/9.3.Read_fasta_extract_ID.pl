## reading a fasta file using input record separator $/
## perl SCRIPT FASTA file 

use strict;
use warnings;

if($ARGV[0] eq '-h' or $#ARGV<0){
 print STDERR "Script to read fasta file and extract an ID\nUsage: perl $0 FASTA ID\n";
 exit(1); ## terminate program here 
}

my $fasta = $ARGV[0];
my %h;
$/ = '>';
open F, "< $fasta" or die "$!: $fasta\n";
while(my $line=<F>){
 $line=~s/>$//;  ## as each seq separated by >
 my @seq = split /\n/,$line;
 my $id=shift @seq;
 $h{$id}=join("",@seq);
}
close F;


my $ID=$ARGV[1] ;
print "Sequnece requested: \n";
if(exists $h{$ID}){
 print ">$ID\n$h{$ID}\n";
}
else{
print "Error: NOT FOUND !!!!\n";
}
