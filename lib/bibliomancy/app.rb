require 'pathname'
require 'sinatra/base'
require_relative 'quote_repo'

module Bibliomancy
  class App < Sinatra::Base
    set quote_repo: QuoteRepo.new(path: Pathname.new(ENV['BIBLIOMANCY_REPO']))

    get '/' do
      quote = settings.quote_repo.random
      "#{quote.text}\n— #{quote.author}"
    end
  end
end
