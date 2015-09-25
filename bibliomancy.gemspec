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

  gem.add_dependency 'sinatra', '~> 1.4'

  gem.add_development_dependency 'minitest',  '~> 5.7'
  gem.add_development_dependency 'rack-test', '~> 0.6.0'
  gem.add_development_dependency 'rerun',     '~> 0.10.0'
  gem.add_development_dependency 'rubocop',   '~> 0.34.0'
end
