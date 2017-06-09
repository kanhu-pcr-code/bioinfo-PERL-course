# This program copies a file, 
# firstly you will specify the file to copy and then you will enter 
# the name of target file, 

use warnings;

=version1
simple copy 
=cut
print "### Copy files Version-1:\n\n";
print "Please enter a file name:";
$file = <STDIN>; # STDIN is default keyborad filehandle
chomp($file); # remove trailing newline

# open filehandle (IN) for input file ($file) in READ mode
open IN, "< $file" or die "$!, $file";
# open filehandle (COPY) for output file ($file\_copy.txt) in WRITE mode
open COPY, "> $file\_copy.txt" or die "$!, $file\_copy.txt";

while ($line=<IN>){
 print COPY $line ;
}

# close filehandles
close IN; close COPY;




=version2
ask user to enter target file name 
=cut
print "### Copy files Version-2:\n\n";
print "Please enter a file name to copy:";
$file = <STDIN>; 
chomp($file); 

print "Please enter a target file name:";
$file_o = <STDIN>; 
chomp($file_o); 

open IN, "< $file" or die "$!, $file";
open COPY, "> $file_o" or die "$!, $file_o";

while ($line=<IN>){
 print COPY $line ;
}
# close filehandles
close IN; close COPY;
print STDERR "$file copied to $file_o successfully\n";



=version3
- edit extension of the input file 
- append copy to the input file name
e.g: input: genes.fasta , output: genes(copy).fasta
=cut
print "### Copy files Version-3:\n\n";
print "Please enter a file name:";
$file = <STDIN>; 
chomp($file); 

$file_o = $file; 
# using regular expression substitute the file extension with 
#  (copy).extension 
$file_o =~s/(\.\w+)$/(copy)$1/; # (\.\w+)$ is stored to $1. 

open IN, "< $file" or die "$!, $file";
open COPY, "> $file_o" or die "$!, $file_o";

while ($line=<IN>){
 print COPY $line ;
}

# close filehandles
close IN; close COPY;
print STDERR "$file_o created successfully\n";

=version4
using AGRV optns 

use warnings;
use strict;

my $file 	= $ARGV[0];  ## First argument
my $file_o 	= $ARGV[1];	 ## second argument

open IN, "< $file" or die "$!, $file";	# open in read mode
open COPY, "> $file_o" or die "$!, $file_o"; # open in write mode

while ($line=<IN>){
 print COPY $line ;
}
close IN; close COPY;

print STDERR "$file_o created successfully\n";

=cut
