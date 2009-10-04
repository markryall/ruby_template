Given /^I'm on the google homepage$/ do
  visit "http://www.google.com.au"
end

When /^I search for "([^\"]*)"$/ do |query|
  on_page_with :Search do |page|
    page.search query
  end
end

Then /^at least one of the search results link to "([^\"]*)"$/ do |expected_link|
  on_page_with :SearchResults do |page|
    results = page.search_results
    
    link_contains = results.find{|result| result.link == expected_link} 
    raise "Couldn't find the link #{expected_link} in the search results" unless link_contains
    
  end
end