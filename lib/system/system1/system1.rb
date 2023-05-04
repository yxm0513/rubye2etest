require 'faraday'
require 'logger'

module System
  class System1
    def initialize(ip='')
      @name = 'ais'
      @ip = ip
    end

    def get_url
      "http://#{@ip}:8000"
    end
    def request
      conn = Faraday.new(url: get_url) do |faraday|
        faraday.adapter Faraday.default_adapter
      end

      response = conn.get('/get', { params: { key: 'value' } })
      puts response.status
      puts response.body
      return response.body
    end
  end
end