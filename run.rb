require 'logging'
require 'minitest/autorun'
log = Logging.logger('/tmp/a.log')
log.level = :warn

puts 'load tests'
require_relative 'lib/test_helper'

log.info("test start")
Minitest.autorun
log.info("test end")