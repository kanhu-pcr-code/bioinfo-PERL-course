# Solutions to 7.Perl_file_handling

## Open a FASTA file and copy its content to another file. 
#Ans: Similar to copy files example

## Ask user to input to two file names and add '__END_OF_FILE__' to both of these files
#Ans: 

use warnings;

print "Please enter first file name:";
$file1 = <STDIN>; 
chomp($file1); 

print "Please enter second file name:";
$file2 = <STDIN>; 
chomp($file2); 

open F1, ">> $file1" or die "$!, $file1";
open F2, ">> $file2" or die "$!, $file2";
print F1 "__END_OF_FILE__\n";
print F2 "__END_OF_FILE__\n";
# close filehandles
close F1; close F2;

## Open a GFF file and report total number of Genes present.
#Ans: 
use warnings;

print "Please Enter GFF file name:";
$gff = <STDIN>; 
chomp($gff); 
$gene_count = 0;
open GFF, "< $gff" or die "$!, $gff";
while($l=<GFF>){
 @tabs = split /\t/,$l;
 if($tabs[2] eq 'gene'){
 $gene_count++;
 }
}
# close filehandles
close GFF;
print "Total number of genes in $gff : $gene_count\n";
# Answer: for Athaliana.gff3: 27416


## Open a GFF file and report total number of Genes present per chromosome.
use warnings;

print "Please Enter GFF file name:";
$gff = <STDIN>; 
chomp($gff); 
%gene_count; # create a hash to count for each Chromosome
open GFF, "< $gff" or die "$!, $gff";
while($l=<GFF>){
 @tabs = split /\t/,$l;
 if($tabs[2] eq 'gene'){
 $gene_count{$tabs[0]}++; ## First column contains Chromsome name
 }
}
# close filehandles
close GFF;
foreach $chr(sort keys %gene_count)
{
	print "$chr\t$gene_count{$chr}\n";
}




## Open a GFF file and report average legth of genes per chromosome.
use warnings;

print "Please Enter GFF file name:";
$gff = <STDIN>; 
chomp($gff); 
%gene_count; # create a hash to count for each Chromosome
%gene_length; # create a hash to total gene length for each Chromosome
open GFF, "< $gff" or die "$!, $gff";
while($l=<GFF>){
 @tabs = split /\t/,$l;
 if($tabs[2] eq 'gene'){
 $gene_count{$tabs[0]}++; ## First column contains Chromsome name
 $gene_length{$tabs[0]}+=$tabs[4]-$tabs[3]+1; #4,5 column contains gene start and end locations
 }
}
close GFF;
foreach $chr(sort keys %gene_count)
{
	print "$chr\t$gene_count{$chr}\t$gene_length{$chr}\t";
	$avg = $gene_length{$chr}/$gene_count{$chr};
	print "$avg\n";
}