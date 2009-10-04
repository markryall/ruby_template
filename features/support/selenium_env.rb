require 'webrat'  
require 'spec/expectations' 

Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :test
  config.application_framework = :external 
end

World(Webrat::Selenium::Matchers)

Before do
  Webrat::SeleniumSession.new 
end

World(Webrat::Selenium::Matchers)
World(Webrat::Selenium::Methods)
World(Spec::Matchers)
World(Webrat::Methods)