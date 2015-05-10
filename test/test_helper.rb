$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

unless ENV['MUTANT']
  begin
  require "coveralls"
  Coveralls.wear!
  rescue LoadError
  end
end

begin
  require "pry"
rescue LoadError
end

require 'minitest/autorun'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }
::MiniTest::Unit::TestCase.send(:include, AssertHelpers)

require 'trollop'
