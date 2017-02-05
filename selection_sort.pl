#!/usr/bin/perl
# Perl version of selection sort implementation from Grokking Algorithms

use strict;
use warnings;


# Input: arr (array)
sub find_smallest {
    my %args = @_;
    foreach my $arg (qw /arr/) {
        if (!exists $args{$arg}) {
            return "ARG ERROR";
        }
    }
    
    my @array = @{$args{arr}};
    my $smallest = $array[0];
    my $smallest_index = 0;
    
    for (my $i = 0; $i < scalar(@array); $i++) {
        if ($array[$i] < $smallest) {
            $smallest = $array[$i];
            $smallest_index = $i;
        }
    }

    return $smallest_index;
}

# Input: arr (array)
sub selection_sort {
    my %args = @_;
    foreach my $arg (qw /arr/) {
        if (!exists $args{$arg}) {
            return "ARG ERROR";
        }
    }
    
    my @array_copy = @{$args{arr}};
    my @newarr;
    my $smallest_index;
    my $smallest_value;
    for (my $i = 0; $i < scalar(@array_copy); $i++) { 
        $smallest_index = find_smallest(arr => $args{arr});
        $smallest_value = splice @{$args{arr}}, $smallest_index, 1;
        push @newarr, $smallest_value;
    }
    return @newarr;
}

my @res = selection_sort(arr => [5, 2, 8, 3, 1999]);
print join(", ", @res) . "\n"; 
