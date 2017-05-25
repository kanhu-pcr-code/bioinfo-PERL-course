#Example for chomp()

print "Please type your name: ";
my $name = <STDIN>;
print "Please type your age: ";
my $age = <STDIN>;
print "\n\n\nHi $name, you are $age years old.\n";

print "press enter to continue...\n";
<STDIN>;

print "Please type your name: ";
my $name = <STDIN>;
chomp($name);
print "Please type your age: ";
my $age = <STDIN>;
chomp($age);
print "\n\n\nHi $name, you are $age years old.\n";
