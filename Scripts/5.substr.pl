# substr()
# Extracts a substring out of EXPR and returns it. 
# First character is at offset zero. 
# If OFFSET is negative, starts that far back from the end of the string. 
# If LENGTH is omitted, returns everything through the end of the string. 
# If LENGTH is negative, leaves that many characters off the end of the string.

$s = "The black cat climbed the green tree";

$color  = substr $s, 4, 5;      # black
$middle = substr $s, 4, -11;    # black cat climbed the
$end    = substr $s, 14;        # climbed the green tree
$tail   = substr $s, -4;        # tree
$z      = substr $s, -4, 2;     # tr

substr $s, 4, 5, 'white';
print "new string: $s\n";		# The white cat climbed ... the green tree





