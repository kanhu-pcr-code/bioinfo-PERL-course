# Read a directory and print only file names (excluding directories)

use warnings;


=version-1
simple read
=cut

print "Enter a directory name: ";
$dir = <STDIN>;
chomp($dir);
opendir DIR, "$dir" or die "Error: $!, $dir\n";
	@ent = readdir(DIR);
closedir DIR;
print "Files present in $dir are : \n";
foreach $f(@ent){
 print "$dir\\$f\n" if (-f "$dir\\$f");
}



=version-2
 ask user directory name
 print file names with file size in bytes
=cut

print "Enter a directory name: ";
$dir = <STDIN>;
chomp($dir);
opendir DIR, "$dir" or die "Error: $!, $dir\n";
	@ent = readdir(DIR);
closedir DIR;

print "Files present in $dir are : \n";
foreach $f(@ent){
 if (-f "$dir\\$f"){
  $size = -s "$dir\\$f";
  $size_kb = $size/1024; # 1kb =1024 bytes
  print "$f\t$size bytes\n";
 } 
}


=version-3
 ask user directory name and a file extension
 print file names with file size in bytes
=cut

print "Enter a directory name: ";
$dir = <STDIN>;
chomp($dir);
print "Enter file extensions to filter: ";
$ext = <STDIN>;
chomp($ext);
opendir DIR, "$dir" or die "Error: $!, $dir\n";
	@ent = readdir(DIR);
closedir DIR;

print "Files(*.$ext) present in $dir are : \n";
foreach $f(@ent){
 if (-f "$dir\\$f" and $f=~m/\.$ext$/){
  $size = -s "$dir\\$f";
  $size_kb = $size/1024; # 1kb =1024 bytes
  print "$f\t$size bytes\n";
 } 
}

