require 'pathname'
require_relative '../test_helper'
require_relative '../../lib/bibliomancy/quote_repo'

module Bibliomancy
  describe QuoteRepo do
    verify_contract QuoteRepo

    describe '#random' do
      it 'returns a random quote' do
        path = Pathname.new('test/fixtures/quotes.yml')
        repo = QuoteRepo.new(path: path, randomness: Random.new(0))
        _(repo.random.text).must_include 'inarticulate things'
      end
    end
  end
end
