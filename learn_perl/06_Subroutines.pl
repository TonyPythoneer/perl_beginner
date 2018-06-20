
=head1

question:

Create two subroutines min() and max() which accept an array as input and calculate the minimum and maximum numeric value of their arguments respectively.

Then, for each given array @car_prices and @flight_prices, calculate and print the difference between the maximum and minimum values.

=cut

@car_prices = (100, 250, 95, 1300, 4534, 102, 100, 97);
@flight_prices = (85.20, 79.99, 45.30, 130, 45.34, 110.25, 100, 917);

# define subroutines
sub min {
	$result = $_[0];
	foreach my $number (@_){
		if ($result > $number){
			$result = $number;
		}
	}
	return $result;
}


sub max {
	$result = $_[0];
	foreach my $number (@_){
		if ($result < $number){
			$result = $number;
		}
	}
	return $result;
}

# write code below
$a = max(@car_prices) - min(@car_prices);
print "$a\n";
$a = max(@flight_prices) - min(@flight_prices);
print "$a\n";
