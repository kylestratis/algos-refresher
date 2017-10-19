# Exercise 4.1 - Grokking Algorithms
# Write code for book's sum demo
# Note - not doing extensive input cleansing here

sub sum_recur {
    my %inputs = @_;
    my @array = @{$inputs{arr}};
    
    if (scalar @array == 1) {
        return $array[0];
    }
    
    return $array[0] + sum_recur(arr => [@array[1..$#array]]);
}

my $x = sum_recur(arr => [1, 2, 3, 4]);
print "My answer to 4.1: $x\n";

# Exercise 4.2
# Write recursive fxn to count number of items in list

sub count_list {
    my %inputs = @_;
    my @array = @{$inputs{arr}};

    if (scalar @array == 0) {
        return 0;
    }
    
    return 1 + count_list(arr => [@array[1..$#array]]);
}

$x = count_list(arr => [1, 2, 3, 4]);
print "My answer to 4.2: $x\n";
