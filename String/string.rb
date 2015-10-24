# much more  http://www.tutorialspoint.com/ruby/ruby_strings.htm

title = String.new
puts title
puts title.empty?
puts title.length
puts title.size

title = String.new( "Much Ado about Nothing" )
puts title
puts title.empty?
puts title.length
puts title.size

#another way to initialize a string
sad_love_story = "Romeo and Juliet"
sad_love_story = 'Romeo and Juliet'
#
## the different of single quotes and double quotes
lear = "King Lear\nA Tragedy\nby William Shakespeare"
puts lear

lear = 'King Lear\nA Tragedy\nby William Shakespeare'
puts lear

# but if used the 'p "hello\n world"' you will get some different that you won't think
p "hello\nworld"


#General Delimited Strings. Pls don't use like this
comedy = %!As You Like It!
history = %[Henry V]
tragedy = %(Julius Ceasar)

# With general delimited strings, you can create strings inside a pair of matching though arbitrary delimiter characters, e.g., !, (, {, <, etc., preceded by a percent character (%). Q, q, and x have special meanings. General delimited strings can be

# %{Ruby is fun.}  equivalent to "Ruby is fun."
# %Q{ Ruby is fun. } equivalent to " Ruby is fun. "
# %q[Ruby is fun.]  equivalent to a single-quoted string
# %x!ls! equivalent to back tick command output `ls`

puts comedy
puts history
puts tragedy

#too much literals
sonnet = <<doc
When in disgrace with fortune and men's eyes
I all alone beweep my outcast state,
And trouble deaf heaven with my bootless cries,
And look upon myself, and curse my fate,
Wishing me like to one more rich in hope,
Featured like him, like him with friends possessed,
Desiring this man's art, and that man's scope,
With what I most enjoy contented least;
Yet in these thoughts my self almost despising,
Haply I think on thee, and then my state,
Like to the lark at break of day arising
From sullen earth, sings hymns at heaven's gate;
For thy sweet love remembered such wealth brings
That then I scorn to change my state with kings.
doc

puts sonnet

#concatenation Strings
puts "Hello," " " "Matz" "!"
puts "Hello," + " " + "Matz" + "!"
puts "Hello, " << "Matz!"
puts "Hello," << " " << "Matz" << "!"
puts "Hello, ".concat "Matz!"

h = "Hello, "
m = "Matz!"
puts h.concat(m)


greet = "Hello, Matz!"
greet.freeze
greet.concat("!")
greet.frozen?


# string in ruby is mutable
string = 'my first string'
string.upcase # => "MY FIRST STRING"
string # => "My first string"
string.upcase! # => "MY FIRST STRING"
string # => "MY FIRST STRING"



# String and symbol
:a_symbol.to_s # => "a_symbol"
:AnotherSymbol.id2name # => "AnotherSymbol"
:"Yet another symbol!".to_s # => "Yet another symbol!"

#e.g.
puts "abc".class
puts :"abc".class


:dodecahedron.object_id # => 4565262
symbol_name = "dodecahedron"
symbol_name.intern # => :dodecahedron
symbol_name.intern.object_id # => 4565262

"string".object_id # => 1503030
"string".object_id # => 1500330
:symbol.object_id # => 4569358
:symbol.object_id # => 4569358




#Substituting Variables into an Existing String
'To 2 decimal places: %.2f' % Math::PI
'Zero-padded: %.5d' % Math::PI


#irb template
require 'erb'
template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
template.result(binding) # => "Chunky bacon!"
food = "peanut butter"
template.result(binding) # => "Chunky peanut butter!"

puts template.result

require 'erb'
template = ERB.new <<emial
Hi <%= @receiver %>
   Congrats you got the award from COO!
Regards,
<%= @sender %>
emial

@receiver = "John"
@sender = "Rechard"
template.result(binding)
puts template.result


# Reversing a String by Words or Characters
s = ".sdrawkcab si gnirts sihT"
s.reverse # => "This string is backwards."
s # => ".sdrawkcab si gnirts sihT"
s.reverse! # => "This string is backwards."
s # => "This string is backwards."



'foobar'.each_byte { |x| puts "#{x} = #{x.chr}" }
# 102 = f
# 111 = o
# 111 = o
# 98 = b
# 97 = a
# 114 = r

joe = <<limerick
There once was a fellow named Joe
quite fond of Edgar Allen Poe
He read with delight
Nearly half the night
When his wife said "Get up!" he said "No."
limerick
# => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n He read with delight\n Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\"\n"

joe.chomp! # => "There once was a fellow named Joe\nquite fond of Edgar Allen Poe\n He read with delight\n Nearly half the night\nWhen his wife said \"Get up!\" he said \"No.\""

joe.chomp! # => nil

# The delete Method
"That's call folks!".delete "c" # => "That's all folks"
"That's alll folks".delete "l" # => "That's a foks"
"That's alll folks".delete "ll" # => "That's a foks"
"That's all folks".delete "abcdefghijklmnopqrstuvwxyz", "^ha" # => "haa"



#Substitute the Substring
"That's alll folks".gsub "alll", "all" # => "That's all folks"
"That's alll folks".gsub "lll", "ll" # => "That's all folks"

call = "All hands on deck!"
call.replace "All feet on deck!" # => "All feet on deck!"

#Wouldn�t you get the same result? Not exactly.When you use replace, call remains
#the same object, with the same object ID, but when you assign the string to call
#twice, the object and its ID will change.
# same object
call = "All hands on deck!" # => "All hands on deck!"
call.object_id # => 1624370
call.replace "All feet on deck!" # => "All feet on deck!"
call.object_id # => 1624370
# different object
call = "All hands on deck!" # => "All hands on deck!"
call.object_id # => 1600420
call = "All feet on deck!" # => "All feet on deck!"
call.object_id # => 1009410


# Getting the Parts of a String You Want

s = 'My kingdom for a string!'
s.slice(3,7) # => "kingdom"
s[3,7] # => "kingdom"
s[0,3] # => "My "
s[11, 5] # => "for a"
s[11, 17] # => "for a string!"



#From a String to an Array
"0123456789".split # => ["0123456789"]
"0 1 2 3 4 5 6 7 8 9".split # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
"0123456789".split( // ) # => ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

c_w = "George Jones, Conway Twitty, Lefty Frizzell, Ferlin Husky"
# => "George Jones, Conway Twitty, Lefty Frizzell, Ferlin Husky"
c_w.split(/, /) # => ["George Jones", "Conway Twitty", "Lefty Frizzell", "Ferlin Husky"]


"new\nopen\nclose\nprint".each { |item| puts item.capitalize }# =>
# New
# Open
# Close
# Print

"YOU KNOW IT CAN BE ANNOYING TO READ SOMETHING THAT IS IN ALL UPPERCASE LETTERS!".downcase
"YOU KNOW IT CAN BE ANNOYING TO READ SOMETHING THAT IS ALL IN UPPERCASE LETTERS!".downcase.capitalize
"warning! keyboard may be hot!".upcase # => WARNING! KEYBOARD MAY BE HOT!

title = "Love's Labours Lost"
title.size # => 19

title.ljust 10 # => "Love's Labours Lost"
title.rjust 19 # => "Love's Labours Lost"


# Converting Between Characters and Values
?a # => 97
?! # => 33
?\n # => 10

'a'[0] # => 97
'bad sound'[1] # => 97

97.chr # => "a"
33.chr # => "!"
10.chr # => "\n"
0.chr # => "\000"
256.chr # RangeError: 256 out of char range

#Processing a String One Word at a Time

#class String
#def word_count
#frequencies = Hash.new(0)
#downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
#return frequencies
#end
#end
%{Dogs dogs dog dog dogs.}.word_count
# => {"dogs"=>3, "dog"=>2}
%{"I have no shame," I said.}.word_count

# Managing Whitespace
# Use strip to remove whitespace from the beginning and end of a string

" \tWhitespace at beginning and end. \t\n\n".strip

#Add whitespace to one or both ends of a string with ljust, rjust, and center:
s = "Some text."
s.center(15)
s.ljust(15)
s.rjust(15)

#Incrementing Strings
"a".next 
# or
"a".succ # => "b"

"aa".next # => "ab"

"z".next # => "aa" # two a's after one z
"zzzz".next # => "aaaaa" # five a's after four z's
"999.0".next # => "999.1" # increment by .1
"999".next # => "1000" # increment from 999 to 1000

" ".next # => "!"
"0".next.next.next # => "3"

"2007".next # => "2008"
2008.next # => 2009

120.chr # => "x"
120.chr.next # => "y"

('aa'..'ag').each { |x| puts x }
# aa
# ab
# ac
# ad
# ae
# af
# ag

def endless_string_succession(start)
while true
yield start
start = start.succ
end
end

endless_string_succession('fol') do |x|
puts x
break if x[-1] == x[-2]
end
# fol
# fom
# fon
# foo

'89999'.succ # => "90000"
'nzzzz'.succ # => "oaaaa"








"a".upto("z") { |i| print i } # => abcdefghijklmnopqrstuvwxyz

for i in "a".."z"
print i
end

"200".class # => String
"200".to_f # => 200.0
"200".to_f.class # => Float

"100".class # => String
"100".to_i # => 100
"100".to_i.class # => Fixnum

"name".intern # => :name
"name".to_sym # => :name

play = "The Merchant of Venice".intern # => :"The Merchant of Venice"

(256.0).class # => Float
(256.0).to_s # => "256.0"

# Testing Whether an Object Is String-Like

'A string'.respond_to? :to_str # => true
Exception.new.respond_to? :to_str # => true
4.respond_to? :to_str # => false





