#Creating Hashes

months = Hash.new
months.empty? # => true
months.length
months.size # => 0

#You can also use new to create a hash with a default value�which is otherwise just
#nil�like this:
months = Hash.new( "month" )
months = Hash.new "month"

#When you access any key in a hash that has a default value, if the key or value
#doesn�t exist, accessing the hash will return the default value:

#Hash also has a class method [], which is called in either one of two ways: with a
#comma separating the pairs, like this:
christmas_carol = Hash[ :name, "Ebenezer Scrooge", :partner, "Jacob Marley", :employee, 
"Bob Cratchit", :location, "London", :year, 1843 ] # => {:name=>"EbenezerScrooge", :employee=>"Bob Cratchit", :year=>1843, :partner=>"Jacob Marley", :location=>"London"}
#Or with =>:
christmas_carol = Hash[ :name => "Ebenezer Scrooge",
 :partner => "Jacob Marley",
  :employee => "Bob Cratchit",:location=> "London", :year => 1843 ] 
# => {:name=>"Ebenezer Scrooge", :employee =>"Bob Cratchit", :year=>1843, :partner=>"JacobMarley", :location=>"London"}

#You can test to see if the hash zip has a given key with any of the following methods,
#which are all synonyms of each other: key?, has_key?, member?, or include?:


zip = { 82442 => "Ten Sleep", 83025 => "Teton Village", 83127 => "Thayne", 82443 => "Thermopolis", 82084 => "Tie Siding", 82336 => "Tipton", 82240 => "Torrington", 83110 => "Turnerville", 83112 => "Turnerville" }

zip.has_key? 82442 # => true

#Or you can do the flip side, and see if it has a given value with value? or has_value?:

zip.has_value? "Ten Sleep" # => true

#Let�s start pulling stuff out of zip.Here is a simple way of grabbing a value: the []
#method. It retrieves a single hash value based on a key:

zip[82442] # => "Ten Sleep"

zip.keys # => [83110, 83127, 82336, 83112, 82084, 83025, 82442, 82443, 82240]
zip.values # => ["Turnerville", "Thayne", "Tipton", "Turnerville", "Tie Siding","Teton Village", "Ten Sleep", "Thermopolis", "Torrington"]

zip.values_at 82084 # => ["Tie Siding"]
zip.values_at 82442, 82443, 82240 # => ["Ten Sleep", "Thermopolis", "Torrington"]

zip.index "Thayne" # => 83127

#The select method uses a block to return a new, multidimensional array of keyvalue pairs
zip.select { |key,val| key > 83000 } # => [[83110, "Turnerville"], [83127, "Thayne"],[83112, "Turnerville"], [83025, "Teton Village"]]

#Iterating over Hashes
zip.each {|k,v| puts "#{k}/#{v}" } # =>
#83110/Turnerville
#83127/Thayne
#82336/Tipton
#83112/Turnerville
#82084/Tie Siding
#83025/Teton Village
#82442/Ten Sleep
#82443/Thermopolis
#82240/Torrington

zip.each_key { |key| print key, " " } # => 83110 83127 82336 83112 82084 83025 82442 82443 82240

zip.each_value { |value| print value, " " } # => Turnerville Thayne Tipton Turnerville Tie Siding Ten Sleep Teton Village Thermopolis Torrington

#Changing Hashes
#Hash�s []= method replaces or adds key-value pairs to an existing hash. For example:
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }
#By the way, this hash uses integers as keys, similar to the way an array is indexed, but
#it doesn�t use 0, which is the first index of an array.
#You can use []= to add a pair to this array:
rhode_island[6]= "Dunthorpe"
#This adds the value "Dunthorpe" with a key 6. Or you can use []= to change a value:
rhode_island[2]= "Bent"
#This changes the value associated with the key 2 to "Bent".Similarly, you can use the
#store method to add a pair to the rhode_island array:
rhode_island.store(6, "Dunthorpe")

#Merging Hashes
#In addition to rhode_island, you also have a hash listing the counties in Delaware.
#There are only three:
delaware = { 1 => "Kent", 2 => "New Castle", 3 => "Sussex" }
#Look again at the Rhode Island hash:
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence",
5 => "Washington" }
#The merge method merges two hashes together, producing a copy of the hashes that
#removes duplicate keys by overwriting the key-value pairs from the merged array.To
#see what I mean by all that, run the example:
rhode_island.merge delaware # => {5=>"Washington", 1=>"Kent", 2=>"New Castle", 3=>"Sussex", 4=>"Providence"}

#Do you see what happened in the result? The keys and values from delaware took
#over the pairs with the same keys in rhode_island, making Bristol, Kent, and Newport
#disappear.

#You can also cherry-pick your values by using merge with a block:
rhode_island.merge( delaware ){|key,old,new| new = old + "_new" } # => {5=>"Washington", 1=>"Bristol_new", 2=>"Kent_new", 3=>"Newport_new", 4=>"Providence"}
#The merge! method makes the changes in place to the hash in the first argument.It
#works with a block as well; you can also use its synonym, update.

#Sorting a Hash
#When you sort a hash with the sort method, you get a multidimensional array of
#two-element arrays in return.Remember, when you create a hash, the key-value pairs
#are not stored in the order they were added.Ruby orders them however it wants to,
#most likely because the values can be accessed or retrieved via the keys, not by
#sequence, as with an array.So order is of no moment to a hash.But it might be to
#you. If it is, try sort:
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 =>
"Washington" }
p rhode_island # => {5=>"Washington", 1=>"Bristol", 2=>"Kent", 3=>"Newport", 4=>"Providence"}
rhode_island.sort # => [[1, "Bristol"], [2, "Kent"], [3, "Newport"], [4, "Providence"], [5, "Washington"]]
#Hash does not have a sort! method, to change the contents of the hash in place.


#Deleting and Clearing a Hash
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 =>"Washington" }

#I�ll delete the pair identified by key 5:
rhode_island.delete( 5 ) # => "Washington"

rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 =>"Washington" }
#With delete_if, I�ll remove all pairs whose key values are less than 3:
rhode_island.delete_if { |key, value| key < 3 } # => {5=>"Washington", 3=>"Newport", 4=>"Providence"}
#delete_if passes all pairs into the block, so you can delete based on a key or a value.
#Here is an example of a deletion based on value:
rhode_island.delete_if { |key, value| value == "Kent" } # => {5=>"Washington", 1=> "Bristol", 3=>"Newport", 4=>"Providence"}

counties = { "Delaware" => 3, "Rhode Island" => 5 }
counties.clear # bye-bye
counties.empty? # => true
#Use clear at your own risk!

#Replacing a Hash

temp = {"Delaware" => 3 }
counties.replace( temp )
#You can also do it this way with an anonymous hash, so to speak:
counties.replace( { "Delaware" => 3 } )

#Converting Hashes to Other Classes
fitzgerald = { 1920 => "This Side of Paradise", 1925 => "The Great Gatsby", 1934 => "Tender Is the Night" }

#hash convert to array
fitzgerald.to_a # => [[1925, "The Great Gatsby"], [1920, "This Side of Paradise"], [1934, "Tender Is the Night"]]

#hash convert to string
novels = fitzgerald.to_s # => "1925The Great Gatsby1920This Side of Paradise1934Tender Is the Night"
# use gsub tidy it up
 

arr = ["43111","43112","43113"]
hash = [{"FUND_CODE" => "43111"},{"FUND_CODE" => "43112"},{"FUND_CODE" => "43113"}]

arr.each{|x| puts hash.any?{|h| h["FUND_CODE"] == x }}



