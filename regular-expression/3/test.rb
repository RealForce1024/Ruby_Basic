require 'yaml'

list = YAML.load(File.open(File.dirname(__FILE__)+'/url_list.yml'))
puts list.class
puts list
@storages = list.split
length = @storages.length   
length.times do |t| 
  puts $1 if @storages[t] =~ /^.*morningstar_(\d)\.(gif|jpg|png)$/
end

 