## Functions in array
# split() : slipts an string into an array

$string = '010101010101';
@array = split /0/,$string;
print "array : @array\n\n";
$string = 'abbxcbbxdffxuuy';
@array = split /x/,$string;
print "array : @array\n\n";
$string = 'perl array created';
@array = split / /,$string;
print "array : @array\n\n";

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
%hash = (
grape => 'purple',
banana => 'yellow',
apple => 'red',
);

@keys = keys %hash;
print "keys = @keys\n";



@values = values %hash;
print "values = @values\n";


($k,$v)=each(%hash);
print "k=$k\tv=$v\n";
($k,$v)=each(%hash);
print "k=$k\tv=$v\n";
($k,$v)=each(%hash);
print "k=$k\tv=$v\n";

## Sorting on hash

%planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Jupiter => 5.2,
    Pluto   => 39,
   Charon  => 39,
);



# default, alphabetical sorting a-z of keys
@keys = sort keys %planets;

# sorting by values
@sorted_keys = sort { $planets{$a} <=> $planets{$b} } keys %planets;


print "\n\nplanets{Mercury} = ".$planets{Mercury};
print "\nexists planets{Mercury} = ".exists $planets{Mercury};

print "\n\n\n\n\n\n"	;
##
# delete()
@array =('a','b','c','d','e');
print "array: @array\n";
delete $array[3]; 
print "array length: ".scalar @array;
print "\nafter delete array[3]: @array\n\n";

@array =('a','b','c','d','e');
print "array: @array\n";
delete $array[4]; 
print "array length: ".scalar @array;
print "\nafter delete array[3]: @array\n\n";

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
delete $planets{Mercury}; # equals to undef $planets{Mercury}.


##undef()

    undef $foo;
    undef $bar{'blurfl'};      # Compare to: delete $bar{'blurfl'};
    undef @ary;
    undef %hash;