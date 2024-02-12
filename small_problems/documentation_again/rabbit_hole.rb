require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


=begin

On the last section of the YAML page, it says it used to be 
implemented by Syck but now: "The underlying 
implementation is the libyaml wrapper Psych"

If we look under the list of methods in diff classes on Psych page
we can find ::load_file, detailed below

- load_file(filename, fallback = false)
Load the document contained in filename. Returns the yaml 
contained in filename as a Ruby object, or if the file is empty, 
it returns the specified default return value, which defaults to 
an empty Hash -

=end