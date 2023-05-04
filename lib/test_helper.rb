require 'minitest/pride'

Dir.glob("#{File.dirname(__FILE__)}/../tests/**/*.rb").each do |file|
  puts("#{file} loaded")
  require file
end