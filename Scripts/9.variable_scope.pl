## Perl variable scopes

{
    $email = 'foo@bar.com';
    print "Inside- $email\n";     # foo@bar.com
}
 print "Outside- $email\n\n";

## using my to the variable  
{
    my $email2 = 'foo@bar.com';
    print "Inside- $email2\n";     # foo@bar.com
}
 print "Outside- $email2";
# $email does not exists
# Global symbol "$email" requires explicit package name at ...
print "\n\n";
#################

@arr = (1,2,3,4,5,6);
foreach $a(@arr){
	print "$a\t";
	## DO SOME CALCULATIONS
	$k=100;
}
print "$k\n\n";
foreach $b(@arr){
	print "$b\t";
	## DO SOME CALCULATIONS...
}
print "\n\n";
#########


### default variables 
## $_ default variable
%hash = (
 a=>1,
 b=>2,
 c=>3,
);
foreach $k(keys %hash){
	print "$k\n";
}
print "\n\n\n";
## functions using $_

@arr = ('a','b','c','d','e');
foreach $k(@arr){
	print uc($k)." ";
}
print "\n";

foreach $_(@arr){
	print uc $_." " ;
}






