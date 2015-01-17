require "open-uri"
require "nokogiri"

class Site


  def convert(website)
    page = Nokogiri::HTML(open(website))
    index_html = File.new("Index.html", "w+")
    index_html << page
    puts "I'm done scraping #{website}"
  end
end

site = Site.new
  site.convert("http://blog.agupieware.com/2014/06/online-learning-intensive-bachelors.html")
