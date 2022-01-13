#!/usr/bin/perl
# filecopy.pl
use strict;
my $usage      = "Usage: $0 src_file dest_file [-v]\n";
my $VerifyFlag = 0;
my @arr        = ();
#
@ARGV == 2 || @ARGV == 3 or die $usage;
$VerifyFlag = 1 if (uc($ARGV[2]) eq "-V");
open SRCFILE, $ARGV[0] or die "Cannot open for input $ARGV[0] ($!).\n";
@arr = <SRCFILE>;
close SRCFILE;
print "Copying $ARGV[0] to $ARGV[1]...\n";
open DESTFILE, ">$ARGV[1]" or die "Cannot open for output $ARGV[1] ($!). \n";
print DESTFILE @arr;
close DESTFILE;
print "Copy done.\n";
