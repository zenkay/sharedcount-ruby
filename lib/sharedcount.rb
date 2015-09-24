require "sharedcount/request"
require "sharedcount/version"

module Sharedcount

  def self.configure(&block)
    yield @config ||= Configuration.new
  end

  def self.config
    @config
  end

  class Configuration
    attr_accessor :apikey, :endpoint
  end

end
