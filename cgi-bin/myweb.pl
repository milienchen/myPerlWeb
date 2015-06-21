# ln -s /usr/bin/perl /usr/local/bin/perl -w
use strict;
use warnings;
use CGI;

print $header->header(-charset => 'utf-8',
        	 	-type => 'text/html');

print "Content-type: text/html\n\n";
print "going to pl response!!\n";