#!/usr/bin/perl

# Inputs: list (arrayref), item (int)
sub binary_search {
    my %args = @_;
    foreach my $arg (qw/list item/) {
        if (!exists $args{$arg}) {
            return "Error, missing argument $arg";
        }
    }
    
    my @list = @{$args{list}};
    my $low = 0;
    my $high = scalar(@list) - 1;

    my $mid;
    my $guess;
    while ($low <= $high) {
        $mid = int(($low + $high) / 2);
        $guess = $list[$mid];
        if ($guess == $args{item}) {
            return $mid;
        }
        if ($guess > $args{item}) {
            $high = $mid - 1;
        }
        else {
            $low = $mid + 1;
        }
    }
    return "Nothing found";
}

my $list = [1, 3, 5, 7, 9, 11];

foreach my $guess (1, 7, -3, 10) {
    print binary_search(list => $list, item => $guess) . "\n";
}
