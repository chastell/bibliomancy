require 'yaml/store'
require_relative 'quote'

module Bibliomancy
  class QuoteRepo
    def initialize(path:, randomness: Random.new)
      @randomness = randomness
      @store      = YAML::Store.new(path)
    end

    def random
      Quote.new(random_record)
    end

    private

    private_attr_reader :randomness, :store

    def random_record
      store.transaction(true) { store['quotes'].sample(random: randomness) }
    end
  end
end
