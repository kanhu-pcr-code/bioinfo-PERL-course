#file handles 

# STDOUT is avaiable fy default and hence not written
print "Hello World!!\n";

print STDOUT "Hello World!!\n";
print "\n\n\n\n";
# STDIN, STDOUT and STDERR

$svar = <STDIN>; #get one line of std input
print STDOUT "1. [$svar]\n";
chomp($svar);
print STDERR "2. [$svar]\n";
print "3. [$svar]\n";
print "\n\n\n\n";
# open a file

## read the content of a file and print 
open FASTA, "< ../data/At_proteins.fasta" 
   or die "Error: $! ../data/At_proteins.fasta";
while ($line=<FASTA>){
 print "$line";
} 
close FASTA;

## Write to a file
open F, ">helloWorld.txt" or die "$! helloWorld.txt";

print F "Hello world !!!\n";
print F "Wrote to a file\n";

close F;

## open DIRECTORY

opendir DIR, "../data" or die "Error: $! ../data";
	@ent = readdir(DIR);
closedir DIR;

  
  