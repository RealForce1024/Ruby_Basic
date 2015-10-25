# puts (1..6).map {|x| x+1 }.inspect
arr = ["str",123,:abc,[1,2,3]]
a = ""
arr.each{ |e| a += e.class.to_s+" " }
p a # => String Fixnum Symbol Array
b = arr.map { |e| e.class.to_s+"" }
p b