require 'webrat'  
require 'spec/expectations'

require File.expand_path(File.dirname(__FILE__) + '/loader')

Webrat.configure do |config|
  config.mode = :mechanize
  config.application_framework = :external
end

World do
  Webrat::Session.new(Webrat::MechanizeAdapter.new)
end

World(Webrat::Matchers)
World(Spec::Matchers)