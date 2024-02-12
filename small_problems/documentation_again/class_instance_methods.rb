=begin

#path returns pathname used to create file as string, 
doesn't normalize the name. May not point to file if moved or 
deleted, pathname becomes void

::path returns string representation of the path.

so #path returns the pathname itself and ::path returns the 
string representation of that path.

Answer:
::path is a class method

while

#path is an instance method

Class methods are called on the class, while instance methods are
called on objects.
You would call ::path on the File class 
(puts File.path('bin'))

and

You would call #path on an object of the File class
f = File.new(file.txt)
puts f.path

=end