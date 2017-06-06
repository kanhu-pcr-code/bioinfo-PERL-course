
# This script accespts an user input DNA sequence 
#	introduces random mutations in it.

# PSEUDOcode
# Start
# Ask the user to enter a piece if DNA squence
# Optionally print the original seq.
# estimate length of the DNA seq.
# choose a random position 'X' on the DNA seq.
# mutate the nucleotide base at 'X' to 'Y'
# Print the mutated seq.
# End

use warnings;

print "Enter a DNA sequence: ";
$DNA =  <STDIN>; ## accept lower case to show mutation
print "DNA = $DNA\n";
$u_DNA = lc($DNA);

## get a random mutation position. 
##	- it should be less than length of DNA

$DNA_len = length $DNA;
$mut_pos = rand($DNA_len); # float value
$mut_pos = int rand($DNA_len); # convert to Interger

$mut_base  = substr $DNA,$mut_pos,1; 	# mutating base
substr $DNA,$mut_pos,1,'C';				# mutate to C
$mut_pos ++; 							# report one pos higher, as 0-index
print "mutated $mut_base at $mut_pos to C DNA = $DNA\n";

# 2nd mutation A
$mut_pos = int rand($DNA_len); 
$mut_base  = substr $DNA,$mut_pos,1; 	# mutating base
substr $DNA,$mut_pos,1,'A';				# mutate to C
$mut_pos ++; 							# report one pos higher, as 0-index
print "mutated $mut_base at $mut_pos to A DNA = $DNA\n";

# 3nd mutation to G
$mut_pos = int rand($DNA_len); 
$mut_base  = substr $DNA,$mut_pos,1; 	# mutating base
substr $DNA,$mut_pos,1,'G';				# mutate to C
$mut_pos ++; 							# report one pos higher, as 0-index
print "mutated $mut_base at $mut_pos to G DNA = $DNA\n";


## Finally print 
print "DNA after 3 mutations : $DNA\n";