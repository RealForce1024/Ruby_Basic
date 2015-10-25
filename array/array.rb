#Creating Arrays
months = Array.new
months.empty? # => true
months = Array.new(12)
months = Array.new 12
months.size # => 12
months.length # => 12
puts months.inspect
p months
#[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

month = Array.new(12, "month")

["month", "month", "month", "month", "month", "month", "month", "month", "month",
"month", "month", "month"]

#Clear the Deck
month.clear # => []
month.empty? # => true

#Creating an Array with a Block
num = Array.new(10) { |e| e = e * 2 }
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

#quickly create the 12 months of one year with block
#but it's so ... you will use another way -->Array(1..12)
arrMonth = Array.new(12){|x| x+=1}
puts arrMonth.inspect
#=>>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
puts Array(1..12).inspect


#another way
month_abbrv = Array.[]( "jan", "feb", "mar", "apr", "may", "jun",
"jul", "aug", "sep", "oct", "nov", "dec" )

month_abbrv = Array[ "jan", "feb", "mar", "apr", "may", "jun",
"jul", "aug", "sep", "oct", "nov", "dec" ]

months = [ nil, "January", "February", "March", "April", "May", "June",
"July", "August", "September", "October", "November", "December" ]

#Here, the method takes a range as an argument to create an array of digits.
digits = Array(0..9) # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

#if you submit a set of strings, Array accepts them as a single, concatenated element.
donald_duck_nephews = Array( "Huey" "Dewey" "Louie" )
#=> ["HueyDeweyLouie"]
#
months = %w[ nil January February March April May June July August September October November December ]
#=>["nil", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

#define an array that the class type of each elements is String.
year = %w[ 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 ]
#=> ["2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009"]
year[0].class # => String


#multiple data types in array
hodge_podge = ["January", 1, :year, [2006,01,01]]
hodge_podge.each {|e| print e.class, " " } # => String Fixnum Symbol Array

arr = ["str",123,:abc,[1,2,3]]
a = ""
a = arr.each{ |e| a += e.class.to_s+" " }
puts a # => String Fixnum Symbol Array



q1 = %w[ January February March ]
q1[0] # => January
q1[2] # => March
q1.at(0) # => January

#The at method is supposed to be slightly faster than [], according to the Ruby documentation
#for at. I�ll just use [] from now on, but at will work, too.

#looping back: You can access the last element in the array with:
q1[-1] # => March

q1[1] #=> February
q1[-2] #=> February

#first and last
q1.first # => January
q1.last # => March

#Both first and last take integer arguments, indicating the number of elements to return:
q1.first 2 # => ["January", "February"]
q1.last 0 # => [] not particularly useful

arr = ["str",123,:abc,[1,2,3]]
p (arr.last 2).reverse
# arr.last(2)==>arr.last 2

# index value
q1.index "March" # => 2
q1.index('element')

a = arr.index :abc #=>> arr.index(:abc) ruby can explain it also
print a

year = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009]
year[0, 3] # => [2000, 2001, 2002]
year[7..9] # => [2007, 2008, 2009]

# instead of [], you can also use the slice method, another alias:
year.slice(1) # => 2001
year.slice(0,4) # => [2000, 2001, 2002, 2003]
year.slice(0..2) # => [2000, 2001, 2002]
year.slice(0...2) # => [2000, 2001]

# find specified value
year.include? 2004 # => true
year.include?( 2010 ) # => false

q1 = %w[ January February March ]
q2 = %w[ April May June ]
q3 = %w[ July August September ]
q4 = %w[ October November December ]

# Concatenation
half1 = q1 + q2
half2 = q3 + q4
yr = half1 + half2

["January", "February", "March", "April", "May", "June"]
["July", "August", "September", "October", "November", "December"]
["January", "February", "March", "April", "May", "June", "July", "August",
"September", "October", "November", "December"]


#Another way to concatenate is with the << method, like this:
yrs = [1999]
yrs << 2000 # => [1999, 2000]

#Set Operations
#Intersection with &
#Difference with -
#Union with |

tue = [ "shop", "make pie", "sleep" ]
wed = [ "shop", "make pie", "read", "sleep" ]

tue & wed # => ["shop", "make pie", "sleep"]
wed - tue # => ["read"]
tue | wed # => ["shop", "make pie", "read", "sleep"]

#Unique Elements
shopping_list = %w[ cheese bread crackers potatoes carrots cheese ]
#=> ["cheese", "bread", "crackers", "potatoes", "carrots", "cheese"]
shopping_list.uniq!
#=> ["cheese", "bread", "crackers", "potatoes", "carrots"]



#Blow Your Stack
#A stack is a LIFO (last in first out) structure.
fruit = %w[ apple orange banana ]
fruit.pop # => "banana"
p fruit # => ["apple", "orange" ]
fruit.push "mango"
p fruit # => ["apple", "orange", "mango"]

#Comparing Arrays
#Three methods allow you to compare arrays to see if they are equal.Those methods
#are ==, <=>, and eql?.Consider these arrays.Each is named for an employee and
#answers whether they work full time or part time (full or part), how many hours per
#week they work, and whether or not they have benefits (yes or no).

bob = [ "full", 40, "yes" ]
lou = ["part", 23, "no"]
schlomo = [ "full", 40, "yes" ]

#The == method compares two arrays to test if they are equal.Two arrays are considered
#equal if (1) they contain the same number of elements, and (2) each element is
#equal to the corresponding element in the other array (compare with Object#==).
#Compare these arrays with ==:


lou == lou # => true
bob == schlomo # => true
schlomo == lou # => false

#Closely related is eql?.This method will return true if the objects are the same or if
#their content is the same.What�s the difference between == and eql?. eql? checks to
#see if the values are equal (as in ==), but also checks if the values are of the same type.

bob == schlomo # => true
bob.eql?( "full, 40, yes" ) # => false, bob is not a string




#The === method determines if a value is a member of, or included in, a range, as you
#can see in these lines of code:
#(1..25) === 14 # => true, in range
#(1..25) === 26 # => false, out of range
#(1...25) === 25 # => false, out of range if ... used

#Changing Elements

months = %w[ nil January February March April May June July August September October
November December ]

#=>["nil", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

months.insert( 0, nil )
#=>[nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

months[5..7] = "Mai", "Juni", "Juli"
# => [nil, "January", "February", "March",
# =>"April", "Mai", "Juni", "Juli", "August", "September", "October", "November",
# =>"December"]

months[5, 3] = "May", "June", "July" 
# => [nil, "January", "February", "March",
#"April", "May", "June", "July", "August", "September", "October", "November",
#"December"]

#Array to String
greeting = [ "Hello! ", "Bonjour! ", "Guten Tag!" ]
#puts greeting.to_s # => Hello! Bonjour! Guten Tag!


#Use join to smash all the elements together into a single string:
months.join # =>
"JanuaryFebruaryMarchAprilMayJuneJulyAugustSeptemberOctoberNovemberDecember"

months.join ", " # => " , January, February, March, April, May, June, July, August, September, October, November, December"

#Using shift and unshift
#Another way to remove an element from an array is with the shift method.This
#method returns the first element of an array (nil if the array is empty), and then
#removes the element, shifting all other elements down by one.It is sort of like a pop
#method except it works on the frontend of the array rather than the backend
#(FIFO�first in, first out).

dates = [ 4, 5, 6, 7 ] # => [4, 5, 6, 7]
dates.shift # => 4
puts dates # => [5, 6, 7]
#Related to shift is unshift, which prepends objects (one or more) to an array.It is
#like push but works on the beginning of an array, not the end.

dates.unshift 4 # => [4, 5, 6, 7]
dates.unshift(2,3) # => [2, 3, 4, 5, 6, 7]

#Deleting Elements
month_a = %w[ nil jan feb mar apr may jun jul aug sep oct nov dec ] # => ["nil", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
month_a.delete "nil"
month_a.delete("noon") {"noon wasn't found. What are you going to do about it?"}

month_a.delete_at( 12 ) # => "dec"
p month_a # ["nil", "jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov"]

#Arrays and Blocks
month_a.each { |e| print e.capitalize + " " }
month_a_2007 = month_a.map { |e| e.capitalize + " 2007" }

p month_a_2007 # => ["Jan 2007", "Feb 2007", "Mar 2007", "Apr 2007", "May 2007", "Jun 2007", "Jul 2007", "Aug 2007", "Sep 2007", "Oct 2007", "Nov 2007", "Dec 2007"]

#Sorting Things and About Face
x = [ 2, 5, 1, 7, 23, 99, 14, 27 ]
x.sort! # => [1, 2, 5, 7, 14, 23, 27, 99]

%w[ one two three four five six seven eight nine ten ].reverse # => ["ten", "nine", "eight", "seven", "six", "five", "four", "three", "two", "one"]

#Multidimensional Arrays
d2 = [ ["January", 2007], ["February", 2007], ["March", 2007] ]

yrs = [ 2007, 2008, 2009 ]
days = [ 31, [28, 29], 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
months = [ "Jn", "Fb", "Mr", "Ap", "Ma", "Ju", "Jl", "Au", "Sp", "Oc", "Nv", "Dc" ]
d3 = [ yrs, days, months ] # => => [[2007, 2008, 2009], [31, [28, 29], 31, 30, 31,30, 31, 31, 30, 31, 30, 31], ["Jn", "Fb", "Mr", "Ap", "Ma", "Ju", "Jl", "Au", "Sp","Oc", "Nv", "Dc"]]

d2.flatten # => ["January", 2007, "February", 2007, "March", 2007]
d2 = [ ["January", 2007], ["February", 2007], ["March", 2007] ]
d2.transpose # => => [["January", "February", "March"], [2007, 2007, 2007]]


a1 = ["1","2"]
a2 = ["3","4"]
puts  a1.concat    a2
puts  a1.push(*a2)





