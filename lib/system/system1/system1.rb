require 'faraday'
require 'logger'

module System
  class System1
    def initialize
      @name = 'ais'
    end

    def request
      conn = Faraday.new(url: 'https://httpbin.org') do |faraday|
        faraday.adapter Faraday.default_adapter
      end

      response = conn.get('/get', { params: { key: 'value' } })

      return response.body
    end
  end
end