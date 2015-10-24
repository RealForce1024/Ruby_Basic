string = 'This is a 30-character string.'

if string =~ /([0-9]+)-character/ and $1.to_i == string.length
puts "Yes, there are #$1 characters in that string."
end

#match = Regexp.compile('([0-9]+)-character').match(string)
#if match && match[1].to_i == string.length
#puts "Yes, there are #{match[1]} characters in that string."
#end
#
#/something/
#Regexp.new("something")
#Regexp.compile("something")
#%r{something}
#
#
#"between".mgsub([[/ee/, 'AA'], [/e/, 'E']]) # Good code
## => "bEtwAAn"