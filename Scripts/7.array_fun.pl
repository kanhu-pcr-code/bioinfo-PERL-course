## Functions in array

# split() : slipts an string into an array

$string = '010101010101';
@array = split //,$string;  # by default split each character
@array = split /0/,$string; # Split using zeros (0)
print "array : @array\n\n";
$string = 'abbxcbbxdffxuuy';
@array = split /x/,$string;
print "array : @array\n\n";	# abb cbb dff uuy
$string = 'perl array created';
@array = split / /,$string;
print "array : @array\n\n"; # split by space

# join() joins an array into string using a separator
@array =('Learn', 'Perl', 'with', 'me');
$string = join ' ',@array;  # space as separator
print "Joined using space(' '): $string\n"; # 'Learn Perl with me'
$string = join '*',@array;  # * as separator
print "Joined using asterik(*): $string\n"; # 'Learn*Perl*with*me'
print "\n\n\n\n\n\n"	;

## Array manipulating operator
@array =('a','b','c','d','e');
print "array: @array\n\n";

# push(), add an element at the end of array
@array =('a','b','c','d','e');
print "array: @array\n\n";
push @array, 'f', 'g';
print "array with f pushed: @array\n\n";

# pop(), remove an element from the end of array
@array =('a','b','c','d','e');
print "array: @array\n\n";
pop @array;
print "array length: ".scalar @array;
print "\narray poped: @array\n\n";

#shift(), remove an element from the begining of an array
@array =('a','b','c','d','e');
print "array: @array\n";
shift @array, 'x';
print "array length: ".scalar @array;
print "\narray shifted: @array\n\n";


#unshift(), add a new element at the begining of an array
@array =('a','b','c','d','e');
print "array: @array\n";
unshift @array, 'x';
print "array unshift: @array\n\n";
print "\n\n\n\n\n\n"	;

# sortin an array
@files = (1,100,99,90,50,-3,3,66);
print "files : @files\n\n";
	# sort lexically
	@articles = sort @files;
print "@articles\n";
	# same thing, but with explicit sort routine
	@articles = sort {$a cmp $b} @files;
print "@articles\n";

	# same thing in reversed order
	@articles = sort {$b cmp $a} @files;
print "@articles\n";

	# sort numerically ascending
	@articles = sort {$a <=> $b} @files;
print "@articles\n";
	# sort numerically descending
	@articles = sort {$b <=> $a} @files;
print "@articles\n";
	
	
	
print "\n\n\n\n\n\n"	;
	