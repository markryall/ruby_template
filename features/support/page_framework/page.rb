class Page 
  attr_reader :url

  def initialize driver, content, url
    @browser = driver
    @document = Nokogiri::HTML(content) 
    @selenium = driver.response.selenium if driver.response and driver.response.respond_to?(:selenium)    
    @url = url
  end

  def element_at selector
    element = @document.at(selector)
    raise "Couldn't find an element using selector \"#{selector}\"" unless element
    element
  end

  def elements_at selector
    elements = @document.css(selector)
    raise "Couldn't find any elements using selector \"#{selector}\"" unless elements.length > 0
    elements
  end

  def element_text_at selector, default=''
    element = @document.at(selector)
    element ? element.inner_text.strip : default
  end

  def selenium
    raise 'this step is not available unless running in selenium mode' unless @selenium
    @selenium
  end
end