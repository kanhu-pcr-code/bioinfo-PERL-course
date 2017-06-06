# Variables of various datatypes
# And variable interpolation inside double quotes



###################################
#    SCALARS					###
###################################

## Scalars with integer values
$a = 10;
$b = -10;
$int =23; ## give error
$big_int = 2000;
print "Integer values\n\$a = $a\n\$b = $b\n\$int = $int\n\$big_int = $big_int\n\n\n\n";

$diameter_earth = 12_742; # underscore(_) is used to read big integers easily by the programmer.

print "##check the _ is missing\n\$diameter_earth = $diameter_earth \n";

# Float numbers 
$float = 0.05;
$pi = 3.14;
$neg = -.6; ## equal to -0.6
print "## Decimal numbers \n\$float = $float\n\$pi = $pi\n\$neg = $neg\n\n\n\n";
## real numbers
$real = 2e3; # equals to 2 X 10^3 or 2000
$evalue = 1e-5; # equals to 1 X 10^-5 or 1/100000
print "\$real = $real\n\$evalue = $evalue\n\n ";


## String variables
$name = 'Robert';
$class = '4th';
$date = 'May 12, 2003';
print "## String values\n\$name = $name \n\$class = $class\n \$date = $date\n";
$enzyme = 'EcoRI';
$dna = 'attgcagttggttcagtggacgattgacccagttgaccagttgaccagta';
$id = 'gi|HS1182921.1';
print "\$enzyme = $enzyme \n\$dna = $dna\n \$id = $id\n";
print "\n\n\n\n\n\n";




$university = 'UENF';

### Single quotes
print 'Single quotes: Name of our university is $university\n';

### Double quotes
print "Double quotes: Name of our university is $university\n";

$string = "Double quotes: Name of our university is $university\n";
print "\$string : $string";



###################################
#    ARRAYS						###
###################################
print "Arrays \n\n\n\n";
#
@array = ('a', 'b', 'c', 'f', 'g', 'h');
print "\@array: @array\n\n";

## access by index 
print "\$array[0]: $array[0]\n";
print "\$array[1]: $array[1]\n";
print "\$array[2]: $array[2]\n";
print "\$array[5]: $array[5]\n";

print "\$array[10]: $array[10]\n";

print "\$array[-1]: $array[-1]\n";

$array[10] = 'X'; 
print "\@array: @array\n\n";
print "\$array[10]: $array[10]\n";

@colors = ('red', 'blue', 'green');
print "\@colors: @colors\n";



###################################
#    HASH					###
###################################
print "Hash \n\n\n\n";
#Crate a hash 
%hash =(
		'apple' => 'red',
		'yellow' => 'banana',
		'green' => 'guava',
		'purple' => 'egg plant'
);

print "\%hash = %hash\n";

print %hash;

print "\n\n\$hash{'apple'}: $hash{'apple'}\n\n";
print "\$hash{apple}: $hash{apple}\n\n";

@array = ('John', 12, 'Tom', 15, 'Monika', 16, 'Nini', 19);
%hash = @array;

print "\$hash{John} = $hash{John} \n";
print "\$hash{Nini} = $hash{Nini} \n";
