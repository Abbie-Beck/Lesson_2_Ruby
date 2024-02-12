s = 'abc'
puts s.public_methods(false).inspect

=begin

I'm guessing by looking at the documentation, and admittedly 
Stack Overflow, that setting it to false will return only 
those methods that pertain to the String class instead of 'all'

And yes the solution confirms this.

=end