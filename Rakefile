require 'rubygems'
require 'rake'

def version
  found_version = nil
  File.read('lib/validatable.rb').each{|line| line =~ /\s*Version\s*=\s*'(([0-9]\.?)+)'/ && break}
  $1
end

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = "mattmatt-validatable"
  gem.summary     = %Q{Validatable is a library for adding validations.}
  gem.description = %Q{Validatable is a library for adding validations.}
  gem.email       = "meyer@paperplanes.de"
  gem.homepage    = "http://github.com/mattmatt/validatable"
  gem.authors     = ['Jay Fields', 'John Nunemaker']
  gem.files       = FileList['lib/**/*.rb', '[A-Z]*', 'test/**/*'].to_a
  gem.version     = version
end

Jeweler::GemcutterTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.ruby_opts << '-rubygems'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test    => :check_dependencies
task :default => :test
