require 'logger'

@logger ||= Logger.new('/tmp/test.log')
@logger.level = Logger::INFO