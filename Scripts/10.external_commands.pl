
## list all files in the current directory
=i
$cmd = 'dir'; 	## replace 'dir' with 'ls' on linux 
system("$cmd");


## return value of system()
$cmd = 'dir';  ## command to list all files
$c = system("$cmd *.pl");
print "system run $cmd returned : $c\n";

$cmd = 'list';  ## unknown command 
$c = system("$cmd *.pl");
print "system run $cmd returned : $c";
=cut

###########
# backticks ``
$cmd = 'dir'; 	## replace 'dir' with 'ls' on linux 
@file = `$cmd`; ## retuns output in array context 
print $file[5];

