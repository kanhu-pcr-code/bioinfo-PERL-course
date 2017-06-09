# solution to 1.1.Getting_stared_with_perl

## Check and report version of  PERL on your computer.
#Ans : open command prompt. Type perl -v


## Write a Perl program that prints your name and e-mail in the 
# following format
     #Name: Student_name
     #E-mail ID : student@uenf.br
#Ans:  write the follwing code in a text file, save the file and run 
 use warnings;
 print "Name: Kanhu charan";
 print "\n";
 # use escape character \ before @ 
 print "E-mail ID : kanhu\@uenf.br";
 print "\n";

 
## Write the same program as an one liner script.

#Ans: On command prompt type the follwoing; and press Enter
# on Linux (use single quotes)
perl -e 'print "Name: Kanhu charan\n";print "E-mail ID : kanhu\@uenf.br\n";'

# on Windows (use double quotes and escape character)
perl -e "print \"Name: Kanhu charan\n\";print \"E-mail ID : kanhu\@uenf.br\n\";"

