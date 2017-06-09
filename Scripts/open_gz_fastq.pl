# read a gunzipped fastq using open()
# works only on Linux ; gunzip not found in windows

$file = '../../data/SRR1506089.fastq.gz';

open FQ, "gunzip -c $file |" 
               or die "command failed : $!";
while($line=<FQ>){
 print $line;
}
close FQ;