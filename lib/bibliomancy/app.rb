require 'sinatra/base'

module Bibliomancy
  class App < Sinatra::Base
    get '/' do
      'Hello, world!'
    end
  end
end
