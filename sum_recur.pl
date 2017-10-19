# Exercise 4.1 - Grokking Algorithms
# Write code for book's sum demo
# Note - not doing extensive input cleansing here

sub sum_recur {
    my %inputs = @_;
    my @array = @{$inputs{arr}};
    
    if (scalar @array == 1) {
        return $array[0];
    }
    else {
        return $array[0] + sum_recur(arr => [@array[1..$#array]]);
    }
}

my $x = sum_recur(arr => [1, 2, 3, 4]);
print "$x\n";
