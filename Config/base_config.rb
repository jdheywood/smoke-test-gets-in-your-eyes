require 'rubygems'
require 'json'
require 'pp'

class BaseConfig

  def self.Get
    json = File.read(File.join(File.dirname(__FILE__), '\base.json'))
    config = JSON.parse(json)
    return config
  end

end