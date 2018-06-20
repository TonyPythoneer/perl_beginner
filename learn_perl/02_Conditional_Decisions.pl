
=head1

note:

Perl 沒有所謂的布林值
當數值為 0;當字串為 "0", "";陣列為 (), undef 都視為 false

支援以下 if else 語法:

    if (condition) statement
    if (condition) {statement1; statement2; statement3;}
    if (condition) statement else statement
    if (condition) elsif (condition) statement else statement
    unless (condition) statement
    unless (condition) statement else statement
    unless (condition) elsif (condition) statement else statement

也支援三元運算： (condition) ? statement1 : statement2

邏輯判斷式子有兩種兩種型別所使用

    比較數值為： `==`, `!=`, `<=>`, `>`, `<`, `>=`, `<=`
    比較字串為： `eq`, `ne`, `gt`, `lt`, `ge`, `le`, `cmp`


question:

An array @family holds a list of family member names. The first hash %shoe_color contains favorite shoe color per person name. The second hash %shoe_size contains shoe size per person name.

Evaluate and print the favorite shoe color and shoe size per each family member. For shoe sizes 10 and above, add the word 'large' to the output line.

Output lines should be in the format: "Homer wears large brown shoes size 12".

Note: not all family members may be included in the hash variables, so you better conditionally check if they exist or not (using the exists operator). If a name does not exist, add the key/value pair into the hash variables - for show color add: black; for shoe size add 99.

=cut

@family = ('Homer', 'Moe', 'Maggie');
%shoe_color = ('Lisa' => 'red', 'Homer' => 'brown', 'Maggie' => 'pink', 'Marge' => 'blue', 'Bart' => 'yellow');
%shoe_size = ('Moe' => 9, 'Lisa' => 7, 'Homer' => 12, 'Bart' => 8, 'Maggie' => 4);

# start your code here

foreach my $member(@family) {
	$color = %shoe_color{$member} || 'black';
	$size = %shoe_size{$member} || 99;
	if ($size >= 10) {
		print "$member wears large $color shoes size $size\n";
	} else {
		print "$member wears $color shoes size $size\n";
	}
}
