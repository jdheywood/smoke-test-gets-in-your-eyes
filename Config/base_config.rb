require 'rubygems'
require 'json'
require 'pp'

class BaseConfig

  def self.Get
    json = File.read('.\Config\base.json')
    config = JSON.parse(json)
    return config
  end

end