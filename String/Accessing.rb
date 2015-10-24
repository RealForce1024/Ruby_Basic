line = "A horse! a horse! my kingdom for a horse!"
cite = "Act V, Scene IV"
speaker = "King Richard III"


puts line
puts cite
puts speaker

puts speaker['Kingdd']
puts speaker.include? 'Kingdd'

puts line[7]
puts line[7].chr
puts line[18, 23]
puts line[18, 23].capitalize

puts cite[0..4]
#Three dots (...) means exclude the last value:
puts cite[0...4]
#use regular expression
puts line[/horse!$/]


#The regular expression /horse!$/ asks, “Does the word horse, followed by ! come at
#the end of the line ($)?” If this is true, this call returns horse!; nil if not.Adding
#another argument, a Fixnum, returns that portion of the matched data, starting at 0 in
#this instance
puts line[/^A horse/, 0]

puts line.index("k")

puts line[line.index("k")]

puts line[line.index("k")].chr