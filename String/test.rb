# ('aa'..'ag').each { |x| puts x }
puts 'To 2 decimal places: %.5f' % Math::PI
puts 'Zero-padded: %.5d' % Math::PI


string = 'This is a 30-character string.'

if string =~ /([0-9]+)-character/ and $1.to_i == string.length
  puts "Yes, there are #$1 characters in that string."
end

# require 'regexp'
# str = "hello world"
# # HeAAo world
# puts str.mgsub([[/ll/,'AA'],[/h/,'H']])
@str = "hello world"
puts @str.class