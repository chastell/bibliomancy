ENV['BIBLIOMANCY_REPO'] = 'test/fixtures/quotes.yml'
ENV['MT_NO_EXPECTATIONS'] = 'true'
ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'minitest/pride'
require 'bogus/minitest/spec'
require 'rack/test'
require_relative '../lib/bibliomancy'

Bogus.configure { |config| config.search_modules << Bibliomancy }

module Minitest
  class Spec
    include Rack::Test::Methods
  end
end
