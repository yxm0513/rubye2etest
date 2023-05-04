require 'minitest/autorun'
require_relative 'lib/logger'

puts 'load tests'
require_relative 'lib/test_helper'

@logger.info("init system")
System::System1.new()

@logger.info("test start")
Minitest.autorun
@logger.info("test end")