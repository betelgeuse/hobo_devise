require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "hobo_devise"
    gem.summary = "Gem that adds devise based authentication to hobo-based applications"
    gem.description = ""
    gem.email = "jbartosik@gmail.com"
    gem.homepage = "http://github.com/ahenobarbi/hobo_devise"
    gem.authors = ["Joachim Filip Ignacy Bartosik", "Petteri Räty"]
    gem.add_dependency "hobo", ">= 1.3.0.RC1"
    gem.add_dependency "devise", ">= 1.2"
    gem.add_dependency "oa-oauth", ">= 0.2.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "hobo_devise #{version}"
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
