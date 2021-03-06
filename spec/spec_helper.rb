require 'rubygems'
$TESTING=true
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'resque'

Spec::Matchers.define :have_key do |expected|
  match do |redis|
    redis.exists(expected)
  end
end
