# Ruxin.Jiang@126.com
# Zijiang.Wang@163.com
# Kangyong.Cai@hotmail.com

emails = %w[Ruxin.Jiang@126.com Zijiang.Wang@163.com Kangyong.Cai@hotmail.com]
re = "^(.*)@(.*)$"
emails.each { |e|
  match = Regexp.compile(re).match(e)
  puts "email= #{e}"
  puts "username = #{$1}"
  puts "company = #{$2}"
  puts "*******************"
}
#简单实现了下...还需要完善...
#打印结果如下
puts_result = <<doc
email= Ruxin.Jiang@126.com
username = Ruxin.Jiang
company = 126.com
*******************
email= Zijiang.Wang@163.com
username = Zijiang.Wang
company = 163.com
*******************
email= Kangyong.Cai@hotmail.com
username = Kangyong.Cai
company = hotmail.com
*******************
doc

