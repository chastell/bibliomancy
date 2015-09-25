require_relative '../test_helper'
require_relative '../../lib/bibliomancy/app'

module Bibliomancy
  describe App do
    let(:app) { App }

    describe 'GET /' do
      it 'greets the world' do
        get '/'
        _(last_response.body).must_equal 'Hello, world!'
      end
    end
  end
end
