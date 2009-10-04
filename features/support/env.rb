require File.expand_path(File.dirname(__FILE__) + '/loader')

require 'webrat'
include Webrat::Methods
include Webrat::Matchers
 
Webrat.configure do |config|
  config.mode = :mechanize
end