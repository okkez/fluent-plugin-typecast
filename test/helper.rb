require 'rubygems'
require 'bundler'
begin
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
rescue LoadError => e
end

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'fluent/test'
require 'fluent/plugin/out_typecast'

class Test::Unit::TestCase
end
