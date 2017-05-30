
##Conditional statements

# code block example
{
	$foo = 5;
	print "foo = $foo\n";

}	

# if ... else statements

if (0) {
	print "This won't print";
}
if (""){
	print "And neither will this";
}
if (42) {
	print "But this will";
}
if ("hobgoblin") {
	print "And so will this";
}
print "\n\n\n\n";
# Numerical comparisons

if(2>1){
	print "2>1 True\n";
}

if(2<1){
	print "False";
}
## string comparisons , A < a < b
if("a" lt "b"){
	print "a lessThan b True";
}

if("A" lt "a"){
	print "A lessThan a True";
}

if("A" lt "AA"){
	print "A lessThan AA True";
}

## if ... else 
$a = 10; $b = 20;
if($a>$b){
 print "a is greater than b.\n";
}
else{
 print "b is greater than a.\n";
}

## if ... elsif ... else (nested if)
$a = 10; $b = 20; 
if($a == $b){
 print "Result: a = b\n";
}
elsif ($a > $b ){
 print "Result: a > b\n";
}
else{
  print "Result: a < b\n";
}

## Compound conditions 
if ($day eq 'Friday') {
	if ($date == 13) {
		print "Ooh, unlucky!";
	}
}

if ($day eq 'Friday' and $date == 13) {
		print "Ooh, unlucky!";
}


$a = 10; $b = 20; $c =9;
if($a>$b && $a > $c){
 print "a is greater than b and c.\n";
}
elsif ($b>$a && $b > $c){
 print "b is greater than a and c.\n";
}
elsif ($c>$a && $c > $a){
 print "c is greater than a and b.\n";
}
else{
 print "Cannt decide\n";
}


## Conditions on hash
$hash =(
	a=>1,
	b=>0,
	c=>100,
);

if($hash{a}){
 print "hash{a}: TRUE\n";
}
if($hash{b}){
 print "hash{b}: TRUE\n";  ## Not print, as $hash{b} returns false
}
if($hash{c}){
 print "hash{c}: TRUE\n";
}

if(exists $hash{b}){
 print "exists hash{b}: TRUE\n";##  print
}

## LOOPS

## while()
my $count = 0;
while ($count < 10) {
	print "Count is $count\n";
	$count++;
}
## foreach() loop
foreach my $value (2,4,6,8,10) {
	print "Value is $value\n";
}

## move through an array using foreach()
@array =('a','b','c','d','e');
foreach $a(@array){
	print "value is : $a\n";  # try replcaing $a with $_
}

foreach $i(0..$#array){
	print "array[$i] value is : $array[$i]\n";  
}
## move through an hash using foreach()
%planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Jupiter => 5.2,
   Pluto   => 39,
   Charon  => 39,
);


foreach $key(keys %planets){
 print "$key = $planets{$key}\n"; # try replacing $key with $_
}

while(($key,$val)=each %planets){
 print "$key = $val\n"; 
}







