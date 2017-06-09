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