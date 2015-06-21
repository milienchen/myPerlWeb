#!/usr/bin/perl -w  
#   scalar:$  array:@  :%
use strict;
use warnings;

my %bb = ('a'=>111,'b'=>222,'c'=>333);
my %cc = ('a'=>1111,'b'=>2222,'d'=>3333);
print $bb{'a'}."\n";
print $bb{'b'}."\n";
print $bb{'d'}."\b";#不存在的值

print "\n\r===== test if===== \n\r";
if (%bb==%cc){
	print "%b==%cc\n\r";
}else{
	print "%b==%cc else\n\r";
}

print "\n ===== test while ===== \n";
my $v =2;
while($v<200){
	print $v."\t\b";
	$v+=1;
};

print "\n=====  test for ===== \n";
my $i;
for ($i = 10; $i > 0; $i -= 1) {
    print $i."\t";
}

print "\n=====  test foreach ===== \n";
foreach $i (reverse((1 .. 10))) {
    print $i."\t";
}

print "\n=====  test subroutine ===== \n";
sub ttt($\@\%){
	print "-----subbroutine (ttt)  start -----\r\n";
	my $param1 = shift;
	my @param2 = @{shift()};  # @{@a2}
	my %param3 = %{shift()};

	print join(", ", @param2)."\n";
	foreach( @param2){
		print  "$_\n";
	};

	print "\n-----subbroutine (ttt)  end -----\r\n";
}; 

my @inArray = (1,2,3,4);
my %inHash = ('a'=>11,'b'=>22,'c'=>33);
ttt('trytry', @inArray,%inHash);

#產生BRE測試檔30個
for(my $tempi=1;$tempi<=30;$tempi++){
	open my $fh, '>', 'try_' . $tempi.'.txt';
    print {$fh} $fh ."\t" . "\n this file is writed by mingchi use perl \n\r  time is : ".localtime ;
    close $fh;
};
