# Step 1: user enters in a date between x and x

class UserYear
  attr_reader :year, :common_keywords
  def initialize(year)
    @year = year
  end

  def valid_year?(year)
    if @year > 1900 && @year < 2014
      return common_keywords
    else
      return "Please enter a date between 1900 and 2014"
    end
end

#get all the headlines from articles from that year



#find the most common keywords

#show the most common keywords in decending order


