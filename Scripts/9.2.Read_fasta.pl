## reading a fasta file using input record separator $/
## perl SCRIPT FASTA file 

use strict;
use warnings;

my %h;
local $/ = '>';

while (<>) {
    chomp;
    /(\w+).+?\n(.+)/s and $h{$1} = $2 or next;
}
