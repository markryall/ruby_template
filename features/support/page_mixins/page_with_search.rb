module PageWithSearch
  def enter_search_query query
    return @browser.fill_in 'q', :with => query
  end

  def search query 
    enter_search_query query 
    @browser.click_button 'Google Search'
  end
  
  def im_feeling_lucky query 
    enter_search_query query 
    @browser.click_button 'btnG'
  end
end