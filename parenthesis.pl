#!/usr/bin/perl

use strict;

my @Strings = (
    '((()())',
    '()))((',
    '((()())())',
    ')))))',
    '(((',
    '))(())',
    '()()()()())',
    '()()()()()(',
);

for my $Str (@Strings)
{
    my $Orig = $Str;
    while ($Str =~ s/\([^\(\)]*\)//gs) {};
    my $i = 0; for (split //, $Orig) { (/\(/ && $i >= 0 && ++$i) || (/\)/ && ($i > 0 && $i--) || (--$i && last)) };
    warn "'$Orig' -> '$Str', i='$i'";
}

