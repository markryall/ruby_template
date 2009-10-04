absolute_require File.dirname(__FILE__) + '/page'
#absolute_require File.dirname(__FILE__)+'/../../features/support/url_builder'

module PageHelpers

  def on_page
    yield Page.new(self, response.body, current_url)
  end

  def on_page_with *mixins
    on_page do |page|
      mixins.each {|mixin_name| page.extend(Object.const_get("PageWith#{mixin_name.to_s}")) }
      yield page
    end
  end

  def visit_url url_type, params={}
    @builder ||= UrlBuilder.new
    url = @builder.send(url_type, params)
    visit url
  end
end

World(PageHelpers)