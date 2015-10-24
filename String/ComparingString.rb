#Sometimes you need to test two strings to see if they are the same or not.You can do
#that with the == method.

hay = "Four score and seven years ago our fathers brought forth, upon this continent,
a new nation, conceived in Liberty, and dedicated to the proposition that all men are
created equal."

nicolay = "Four score and seven years ago our fathers brought forth, upon this
continent, a new nation, conceived in liberty, and dedicated to the proposition that
\"all men are created equal\""

hay == nicolay # => false

# <=> spaceship operator
#It compares the character code values of the strings, returning -1
#(less than), 0 (equals), or 1 (greater than), depending on the comparison, which is
#case-sensitive
#ASCII http://baike.baidu.com/view/15482.htm
"a" <=> "a" # => 0
"a" <=> 97.chr # => 0
"a" <=> "b" # => -1
"a" <=> "`" # => 1

"a" <=> "A" # => 1
"a".casecmp "A" # => 0
"ferlin husky".casecmp "Ferlin Husky" # => 0
"Ferlin Husky".casecmp "Lefty Frizzell" # => -1