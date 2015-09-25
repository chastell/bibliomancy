require 'virtus'

module Bibliomancy
  class Quote
    include Virtus.model

    values do
      attribute :author, String
      attribute :text,   String
    end
  end
end
