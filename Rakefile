require "bundler/gem_tasks"
require 'rake'
require 'rake/testtask'
 
Rake::TestTask.new do |t|
    t.test_files = FileList['test/test*.rb']
end
 
task(default: :test)


