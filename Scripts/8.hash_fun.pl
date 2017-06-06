# Functions in hash

%hash = (
grape => 'purple',
banana => 'yellow',
apple => 'red',
);

# keys %HASH : returns all keys of a HASH
@keys = keys %hash;
print "keys = @keys\n";


# values %HASH : returns all values of a HASH
@values = values %hash;
print "values = @values\n";

# each %HASH : returns all (key, value) pairs of a HASH one at a time
# used within a while() loop 

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
$foo = undef; # CORRECT
@ary = undef; # INCORRECT
%hash = undef; #INCORRECT 

    undef $foo;
    undef $bar{'blurfl'};      # Compare to: delete $bar{'blurfl'};
    undef @ary;
    undef %hash;
