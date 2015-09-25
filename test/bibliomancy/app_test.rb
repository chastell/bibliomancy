require_relative '../test_helper'
require_relative '../../lib/bibliomancy/app'
require_relative '../../lib/bibliomancy/quote'
require_relative '../../lib/bibliomancy/quote_repo'

module Bibliomancy
  describe App do
    let(:app)        { App.set(quote_repo: quote_repo) }
    let(:quote_repo) { fake(QuoteRepo)                 }

    let(:quote) do
      Quote.new(author: 'Dan Quayle',
                text:   'Verbosity leads to unclear, inarticulate things.')
    end

    describe 'GET /' do
      it 'shows a random quote' do
        stub(quote_repo).random { quote }
        get '/'
        _(last_response.body).must_include 'inarticulate things'
        _(last_response.body).must_include 'Dan Quayle'
      end
    end
  end
end
