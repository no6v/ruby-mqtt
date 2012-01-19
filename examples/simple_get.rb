#!/usr/bin/env ruby
#
# Connect to a local MQTT broker, subscribe to all topics
# and then loop, displaying any messages received.
#

$:.unshift File.dirname(__FILE__)+'/../lib'

require 'rubygems'
require 'mqtt'

MQTT::Client.connect('test.mosquitto.org') do |client|
  client.get('#') do |topic,message|
    puts "#{topic}: #{message}"
  end
end
