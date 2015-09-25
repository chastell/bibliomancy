require 'sinatra/base'
require_relative 'quote_repo'

module Bibliomancy
  class App < Sinatra::Base
    set quote_repo: QuoteRepo.new

    get '/' do
      quote = settings.quote_repo.random
      "#{quote.text}\n— #{quote.author}"
    end
  end
end
