require "faraday"
require "json"

module Sharedcount
	class API

		attr_accessor :connection, :endpoint, :apikey

		def initialize(endpoint = nil, apikey = nil)
			self.endpoint = endpoint || Sharedcount.config.endpoint
			self.apikey = apikey || Sharedcount.config.apikey
	    self.connection = Faraday.new(:url => self.endpoint) do |faraday|
	      faraday.request  :url_encoded                            
	      faraday.adapter  Faraday.default_adapter 
	    end
		end

		def fetch(url)
      response = self.connection.get "/?apikey=#{self.apikey}&url=#{url}"
      return Sharedcount::Data.new(response.body)
		end

	end
end