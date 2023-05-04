require 'logger'


module Mylogger
  def self.logger
    @logger ||= Logger.new('/tmp/test.log')
    @logger.level = Logger::INFO
    @logger
  end
end