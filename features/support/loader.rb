require 'find'     

def absolute_require path
  require File.expand_path(path)
end

def OpenStruct
  open_struct = OpenStruct.new
  yield open_struct
  open_struct
end

def debug
  require 'ruby-debug'; debugger
end

absolute_require File.dirname(__FILE__) + '/page_framework/page_helper'
  
Find.find(File.dirname(__FILE__)+ '/page_mixins/') do |path|
  absolute_require path if path =~ /page_with.+\.rb$/
end