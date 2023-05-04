require 'minitest/pride'


Dir.glob("#{File.dirname(__FILE__)}/../lib/**/*.rb").each do |file|
  #puts("Lib #{file} loaded")
  require file
end

Dir.glob("#{File.dirname(__FILE__)}/../tests/**/*.rb").each do |file|
  #puts("Test #{file} loaded")
  require file
end