#Convert 3 letter amino acid code into single letter amino acid code
# Create a hash of 3 letter codes as key and single ltters as value
my %AA = (
		ALA=>'A',
		TYR=>'Y',
		MET=>'M',LEU=>'L',CYS=>'C',GLY=>'G',
        ARG=>'R',ASN=>'N',ASP=>'D',GLN=>'Q',GLU=>'E',HIS=>'H',TRP=>'W',
        LYS=>'K',PHE=>'F',PRO=>'P',SER=>'S',THR=>'T',ILE=>'I',VAL=>'V'
	);

## print the single letter codes from a given 3 letter code.

print "Single letter code for MET is : $AA{MET}\n";
print "Single letter code for GLY is : $AA{GLY}\n";
print "Single letter code for SER is : $AA{SER}\n";

exit;
