a = [5, 9, 3, 11]
puts a.min(2)

=begin

According to the 2.3.0 doc, I can provide the .min method
with an argument to specify how many minimum values to supply
so a.min(2) should do the trick


This information is listed under module Enumerator
Our solution explains that there something like a feature called 
MI or multiple inheritance at work here. 
MI has pitfalls so Ruby doesn't allow it, but it has a similar 
feature referred to as mix-in modules, aka mix-ins

They allow for classes of different types to share behaviors
without using inheritance. I searched min and got lucky,
but the correct procedure to find this is to look under the
Included Modules section of Array class. I must learn to search
Parent Class and Included Modules until I find methods 
that aren't in main doc for a class. 

=end