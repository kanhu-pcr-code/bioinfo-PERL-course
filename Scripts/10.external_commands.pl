
## list all files in the current directory

## list all files (on windows use command 'dir')
# windows 
$cmd = 'dir'; 	
system("$cmd");

## list all files (on linux use command 'ls')
# Linux 
$cmd = 'ls'; 	
system("$cmd");

## return value of system()
$cmd = 'dir';  ## command to list all files
$c = system("$cmd *.pl");
print "system run $cmd returned : $c\n";

$cmd = 'list';  ## unknown command 
$c = system("$cmd *.pl");
print "system run $cmd returned : $c";


###########
# backticks ``
$cmd = 'dir'; 	## replace 'dir' with 'ls' on linux 
@file = `$cmd`; ## retuns output in array context 
print $file[5];

