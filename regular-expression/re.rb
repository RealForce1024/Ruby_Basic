string = 'This is a 39000000-character  9000000-work string.'
#if string =~ /([0-9]+)-character/ and $1.to_i == string.length
#"Yes, there are #$1 characters in that string."
#end
## => "Yes, there


match = Regexp.compile('([0-9]+)-character').match(string)
if match 
puts "Yes, there are #{match[1]} characters in that string."
end
# =>