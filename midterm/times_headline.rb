require 'json'
require 'rest-client'
require 'pry'

class TimesArticles
  attr_accessor :headlines

  def initialize
    @headlines = []
  end

  def get_input
    gets.strip
  end

  def get_from_times
    response = RestClient.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?q=obama&facet_field=source&fl=headline&begin_date=20121109&end_date=20121231&api-key=C4A37DBB38074098B320EECA2F206C64:16:68558770")
    parsed_times = JSON.parse(response)
    parsed_times["response"].each do |headline|
      headline = headline["docs"][0]["headline"]["main"]
      @headlines << Headline.new({headline: headline})
    end
  end

end




