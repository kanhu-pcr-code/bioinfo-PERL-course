# 10.Run_external_programs

## Write a script to perform blastP search at 10 different e-value 
#  cutoff. Report total number of hits predicted in each search. 
#Ans: 

use warnings;
use strict;

my @e_values = (10,1,0.1,0.01,0.001,0.0001,0.00001,1e-10, 1e-15, 1e-30);
my $query = $ARGV[0];
my $db = $ARGV[1];
my %h; # to store no of hits for each e-val
foreach my $e(@e_values){
 my $cmd = "blastp -query $query -db $db -outfmt 6 -out blastp$e\.out -evalue $e";
 print STDERR "$cmd\n";
 system($cmd);
 my $hit = `wc -l blastp$e\.out`;
 chomp($hit);
 $h{$e} = $hit; 
 unlink ("$query\_blastp.out");
}

foreach my $e(@e_values){
 print "$e\t$h{$e}\n";
}




## Write a script to automate  BLASTp search, using each of the 
#  fasta files in the user defined directory against A.thaliana proteome. 
#Ans:
use warnings;
use strict;


my $query = $ARGV[0]; ## Enter directory containing fasta files
my $db = $ARGV[1];    # database file path

opendir DIR, "$query" or die "Error: $! $query";
my @files = readdir(DIR);
closedir DIR;

foreach my $f(@files){
 if(-f "$query/$f" and $f=~m/\.faa$/){ # check is it a *.faa file
	my $cmd = "blastp -query $query/$f -db $db -outfmt 6 -out blastp$f\.out";
	print "$cmd\n";
	system("$cmd");
	} 
}