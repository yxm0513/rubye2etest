require 'minitest/autorun'
require_relative 'lib/logger'

puts 'load tests'
require_relative 'lib/test_helper'

options = optparse

@logger.info("init system")
ais = System::System1.new(options[:ip])

ais.request

@logger.info("test start")
Minitest.autorun
@logger.info("test end")