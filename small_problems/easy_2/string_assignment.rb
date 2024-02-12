name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
On line 1, local variable `name` is initialized to reference a string object
with the value `Bob`
On line 2, local variable `save_name` is initialized to reference the string
object referenced by `name`
On line 3, the destructive `upcase` method (mutating due to its being called
with a bang `!`) is called on `name`
This method returns the string that it is called on with each letter
converted to its uppercase version, & when it is called with a `!`,
this action is performed on the original object, not a copy
Because the original object that `name` references has been mutated by the 
method, reassignment has not occured and both variables reference the same
string object
Therefore, the `puts` method will output:
`BOB`
`BOB`

=end 
