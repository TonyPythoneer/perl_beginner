
=head1

note:

Perl 的 Variables 有三種
1. Scalars, ex: `$x = 5;`, 宣告時一定為 $
2. Arrays, ex: `@item_price_list = (5 , 8 , 24);`, 宣告時一定為 @
3. Hashes, ex: `%item_catalog = ("Apple" => 5 , "Banana" => 8, "Mushroom" => 24);`, 宣告時一定為 %


question:

Assign an array variable called my_wishlist with the two cars you want to buy: the first array element is the full model name of the BMW car and the second array model is the full model name of the Toyota car. Use the array variable contents as keys to the hash variable in order to print lines in the following format: "I would like to buy one for the price of Dollars."
For example: "I would like to buy one Lexus 3 for the price of 95000 Dollars."

=cut

%car_catalog = (
	"BMW Series 5" => 100000,
	"Mercedes 2000" => 250000,
	"Toyota Corolla" => 20000,
	"Lexus 3" => 95000
);
@my_wishlist = ("BMW Series 5", "Lexus 3");
foreach my $car (@my_wishlist) {
	$price = %car_catalog{$car};
	print "I would like to buy one $car for the price of $price Dollars.\n";
}
