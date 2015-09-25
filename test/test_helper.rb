ENV['MT_NO_EXPECTATIONS'] = 'true'
ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'

module Minitest
  class Spec
    include Rack::Test::Methods
  end
end
