## Script to store input from user
use warnings;

print "Enter your name: ";
$name = <STDIN>;
print "Enter your age: ";
$age = <STDIN>;

print "\n### Before chomp()\n-\n";
print "Hi,$name. You are  $age old.\n-\n";


# chomp() removes leading newline character from a scalar
chomp($name);
chomp($age);
print "### After chomp()\n\n";
print "Hi,$name. You are  $age old.\n";