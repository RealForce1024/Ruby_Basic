require 'yaml'
list = YAML.load(File.open(File.dirname(__FILE__)+'/email_list.yml'))
@storages = list.split
length = @storages.length   
length.times do |t|   
   match = Regexp.compile('^([a|A]\d{5,6})(@163\.com)$').match(@storages[t])
   
   puts match
   puts $1
   puts $2
  end

