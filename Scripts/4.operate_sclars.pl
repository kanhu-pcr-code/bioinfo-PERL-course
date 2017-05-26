
use warnings;
# Operations in Scalar varaibles

# abs() 				#Returns the absolute value of its argument.
$value = -200;
$value2 = abs($value);# OR abs $value 
print "#abs()\n value=$value\n Absolute of $value is value2=$value2\n";

#sin cos 	 			#trigonometry functions 
$theta =45;
$sin = sin($theta);
$cos = cos($theta);
print "sin of $theta = $sin\ncos of $theta = $cos\n";

#exp() 					# Returns e (the natural logarithm base) to the power of EXPR
print "\ne^1 = ".exp(1); # 2.718
print "\ne^0 = ".exp(0); # 1
print "\ne^5 = ".exp(5); # 1

#log 					# Returns the natural logarithm (base e) of EXPR
						#To get the log of another base, use basic algebra: 
						  #The base-N log of a number is equal to the natural 
						  #log of that number divided by the natural log of N. e.g log10(2) = log(2)/log(10);
print "\nlog_e(1) = ".log(1); #						  
print "\nlog_10(1) = ".log(1)/log(10); #	

print "\nlog_e(2) = ".log(2); #						  
print "\nlog_10(2) = ".log(2)/log(10); #	

#sqrt				#Return the positive square root of EXPR
print "\nsquare root of 4 = ".sqrt(4); #
print "\nsquare root of 100 = ".sqrt(100); #						  
print "\nsquare root of 517 = ".sqrt(517); #

#int 						#Returns the integer portion of EXPR
$float = 3.1458579378743;
print "\n$float in integer form: ".int($float)."\n";
$float = 5671671.006;
print "\n$float in integer form: ".int($float)."\n";

#hex 				# Interprets EXPR as a hex string and returns the corresponding numeric value.
#print "hexadecimal of 0xAf:";
#print hex '0xAf'; # prints '175'
#print "\n version 2: ";
#print hex 'aF';   # same
#oct 			


#rand 				# Returns a random fractional number 
					#   greater than or equal to 0 and less than the value of EXPR.
rand(5);
int rand(5)
print "\nRandom-1 from 0-5: ".rand(5); 
print "\nRandom-2 from 0-5: ".rand(5); 
print "\nRandom-3 from 0-5: ".rand(5); 
print "\nRandom-4 from 0-5: ".rand(5); 
print "\nRandom-5 from 0-5: ".rand(5); 

## random in integer form 
print "\n\nInteger form\nRandom-1 from 0-5: ".int rand(5); 
print "\nRandom-2 from 0-5: ".int rand(5); 
print "\nRandom-3 from 0-5: ".int rand(5); 
print "\nRandom-4 from 0-5: ".int rand(5); 
print "\nRandom-5 from 0-5: ".int rand(5); 

