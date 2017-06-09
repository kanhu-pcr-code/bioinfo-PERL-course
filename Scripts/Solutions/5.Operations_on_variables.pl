
# Solutions to 5.Operations_on_variables
## Ask user to input a DNA sequence and print it in upper case letters.
#Ans: 

use warnings;
print "Enter a DNA sequence: ";
$dna = <STDIN>;
$dna_uc = uc $dna;
print "DNA in upper case : $dna_uc\n";

## Ask user to input a DNA sequence and print its first 3 nucleotides 
#   and last 3 nucleotides.

use warnings;
print "Enter a DNA sequence: ";
$dna = uc <STDIN>;
chomp($dna);
$start_3 = substr($dna, 0,3);# position , length 
$end_3 = substr($dna, -3); ## negative position 
print "DNA seq: $dna\nFirst three: $start_3\nLast three base: $end_3\n";

## You were provided with an array @DNA=(‘a’,’t’,’g’,’c’); 
# Generate a random genetic code by combaining any 3 nucleotide bases.  
# Write a program to generate and print a random amino acid 
# translated from the genetic code.
# (Hint: assume have stored genetic codes in an hash %genetic_code)

#Ans: 
use warnings;
@DNA = ('a','t','g','c'); 
$three_base = $DNA[int rand(3)].$DNA[int rand(3)].$DNA[int rand(3)];
print "Random genetic code: $three_base\n";
# you may comment the follwoing code, as it will warn as error 
print "Amino acid coded by $three_base: $genetic_code{$three_base}\n";

## Create an hash of 5 genes. 
#  Gene name as key and their lengths as values. 
#  Print the list of genes with increasing order of gene length.

use warnings;

%genes = (
 ATP7B => 345,
 CYP86A4 => 1022,
 CER1 => 654,
 TPK1 => 120,
 MAN1 => 876,
);
# numerically sorting by values 
@genes_or = sort {$genes{$a}<=> $genes{$b}} keys %genes;
print "Genes in ascending order of length\n";
print "$genes_or[0] : $genes{$genes_or[0]}\n";
print "$genes_or[1] : $genes{$genes_or[1]}\n";
print "$genes_or[2] : $genes{$genes_or[2]}\n";
print "$genes_or[3] : $genes{$genes_or[3]}\n";
print "$genes_or[4] : $genes{$genes_or[4]}\n";



## Use the same gene hash to display the gene list to the user and ask to type a gene name. 
# Write a program  to delete user defined gene from the hash. 
# Print the updated gene list. 
use warnings;

%genes = (
 ATP7B => 345,
 CYP86A4 => 1022,
 CER1 => 654,
 TPK1 => 120,
 MAN1 => 876,
);
@genes_or = keys %genes;
print "Genes in the hash \n";
print "$genes_or[0] : $genes{$genes_or[0]}\n";
print "$genes_or[1] : $genes{$genes_or[1]}\n";
print "$genes_or[2] : $genes{$genes_or[2]}\n";
print "$genes_or[3] : $genes{$genes_or[3]}\n";
print "$genes_or[4] : $genes{$genes_or[4]}\n";

print "Please enter a gene name to delete:";
chomp($g = <STDIN>);
delete $genes{$g};
# get the keys 
@genes_or = keys %genes;
print "Genes after deleting $g\n";
print "$genes_or[0] : $genes{$genes_or[0]}\n";
print "$genes_or[1] : $genes{$genes_or[1]}\n";
print "$genes_or[2] : $genes{$genes_or[2]}\n";
print "$genes_or[3] : $genes{$genes_or[3]}\n";


