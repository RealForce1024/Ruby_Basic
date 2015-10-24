require 'yaml'

re = '^(https?)://(www\.test\.com\.[a-z]{1,5})/([a-z]{1,20})$'
list = YAML.load(File.open(File.dirname(__FILE__)+'/url_list.yml'))
puts list.class
puts list
@storages = list.split
length = @storages.length   
length.times do |t| 
  puts match = Regexp.compile(re).match(@storages[t])
  puts $1
  puts $2
  puts $2.split("\.")[3]
  puts $3
end

 