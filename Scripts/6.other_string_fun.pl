
# Other string funtions

# length() 		# returns length of a string
$string = "this is a long string";
print "length of string is ". length($string)."\n\n\n"; #including spaces 21

# index()		# index STR,SUBSTR, POSITION
# returns the position of the first occurrence of SUBSTR in STR at or after POSITION.
# If the substring is not found, index returns -1. 

$string = "big white cat";
$sub_string = "cat";
$loc = index $string, $sub_string;
print "Location of '$sub_string' in $string is : $loc\n"; # 10

$sub_string = "cct";
$loc = index $string, $sub_string;
print "Location of '$sub_string' in $string is : $loc\n\n\n"; # -1

# reverse()			
$string = "big white cat"; # tac etihw gib
$rev = reverse $string;
print "reverse of $string is $rev\n\n\n";
