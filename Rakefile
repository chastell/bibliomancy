require 'rake/testtask'
require 'rubocop/rake_task'

task default: %i(test rubocop)

Rake::TestTask.new do |task|
  task.pattern = 'test/**/*_test.rb'
  task.warning = true
end

RuboCop::RakeTask.new do |task|
  task.options << '--display-cop-names'
end
