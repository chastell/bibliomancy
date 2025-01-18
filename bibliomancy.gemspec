Gem::Specification.new do |gem|
  gem.author      = 'Piotr Szotkowski'
  gem.description = 'A webserver for quotations'
  gem.email       = 'chastell@chastell.net'
  gem.homepage    = 'https://github.com/chastell/bibliomancy'
  gem.license     = 'AGPL-3.0'
  gem.name        = 'bibliomancy'
  gem.summary     = 'Bibliomancy: a quotation webserver'
  gem.version     = '0.0.0'

  gem.files       = `git ls-files -z`.split("\0")
  gem.executables = gem.files.grep(%r{^bin/}).map { |path| File.basename(path) }
  gem.test_files  = gem.files.grep(%r{^test/.*\.rb$})

  gem.add_dependency 'private_attr', '~> 1.1'
  gem.add_dependency 'sinatra',      '~> 1.4'
  gem.add_dependency 'virtus',       '~> 1.0'

  gem.add_development_dependency 'bogus',     '~> 0.1.6'
  gem.add_development_dependency 'minitest',  '~> 5.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'reek'
  gem.add_development_dependency 'rerun',     '~> 0.11.0'
  gem.add_development_dependency 'rubocop',   '~> 0.34.0'
end
