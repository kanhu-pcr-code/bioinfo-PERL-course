## Script to store input from user
use warnings;

## Version 1: using <>
# Display a message on screen
print "Please type a number: ";
# accept input from user
$num = <>;
print "You entered: $num\n\n";

## Version 2: using <> from STDIN 
# Display a message on screen
print "Please type a number: ";
# accept input from user STDIN: standard input (keyboard)
$num = <STDIN>;
print "You entered: $num\n\n";


## Version 2: using readline() from STDIN 
# Display a message on screen
print "Please type a number: ";
# accept input from user STDIN: standard input (keyboard)
$num = readline STDIN;
print "You entered: $num\n\n";
