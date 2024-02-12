5.step(to: 10, by: 3) { |value| puts value }
#5
#8

=begin

it begins with the number to the left of step
and counts up to the number following 'to:'
by increments of the number following 'by:'
if the 'by:' increment is not provided, defaults to 1
if the 'to:' is not provided, but a block is, returns self
if the 'to:' is not provided, nor a block, returns an enumerator
if limit is negative defaults to infinity

so it is counting up to 10 by increments of 3
starting with 5
it will start with 5 and count up to 10 by 3's

=end