#!/Users/phred/dev/perl-5.12.2/bin/perl
# WARNING: this file is generated, do not edit
# generated on Sat Jan 22 11:09:18 2011
# 01: lib/Apache/TestConfig.pm:958
# 02: lib/Apache/TestConfig.pm:1048
# 03: lib/Apache/TestMM.pm:141
# 04: Makefile.PL:61

BEGIN { eval { require blib && blib->import; } }
#!perl -wT

use strict;

use CGI;
use CGI::Cookie;

my %cookies = CGI::Cookie->fetch;
my $name = 'ApacheTest';
my $c = ! exists $cookies{$name}
    ? CGI::Cookie->new(-name=>$name, -value=>time)
    : '';

print "Set-Cookie: $c\n" if $c;
print "Content-Type: text/plain\n\n";
print ($c ? 'new' : 'exists'), "\n";
