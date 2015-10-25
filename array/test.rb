# puts (1..6).map {|x| x+1 }.inspect
arr = ["str",123,:abc,[1,2,3]]
p (arr.last 2).reverse
a = arr.index :abc
print a