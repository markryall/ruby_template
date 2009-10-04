module PageWithSearchResults   
  def results 
    puts @document.css 'li.g'
  end
  
  def search_results
    elements_at('li.g').map do |search_result|
      OpenStruct do |open_struct| 
        link = search_result.at('a')
        open_struct.link = link['href']
        open_struct.title = link.inner_text
      end
    end
  end
end