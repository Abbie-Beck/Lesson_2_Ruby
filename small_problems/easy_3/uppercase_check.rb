def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


=begin
on lines 5-10, the 'uppercase?' method is invoked and passed a string
object as an argument
the `uppercase?` method is defined on lines 1-3
on line 1, the string arguments are bound to method parameter `string`
on line 2, the non-mutating `upcase` method is called on the object 
referenced by local method variable `string` 
this method creates a copy of `string` with all characters converted
to their uppercase version
conditional operator `==` is employed to check if the return
value of the `upcase` method call is equal to the string referenced
by `string` within the method
if both values are equal, the `uppercase?` method will return the boolean
object `true`, and `false` will be returned otherwise

=end