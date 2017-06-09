## create a automatic pipeline 
use warnings;

# define Executable files
$muscle = 'Z:\Work\CourseWork\Semester-3\Teaching\exe\muscle3.8.31_i86win32.exe';
$fasttree = 'Z:\Work\CourseWork\Semester-3\Teaching\exe\FastTree\FastTree.exe';

print "Enter the path containing Fasta files: ";
chomp($dir = <STDIN>);
if(!(-d $dir)){
	die "Error: $dir is not a directory\n";
}
opendir DIR, "$dir" or die "Error: $!, $dir\n";
@files = readdir(DIR);
closedir DIR;

foreach $f(@files){
 $cmd = "$muscle -in $dir\\$f -out ${f}.ali"; # creating the command
 print STDERR "$cmd\n"; # Display the command to user 
 system($cmd);
 $cmd = "$fasttree ${f}.ali > ${f}.tree"; 
 print STDERR "$cmd\n";
 system($cmd);
}





