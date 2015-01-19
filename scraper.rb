require "nokogiri"
require "reverse_markdown"
require "open-uri"

class  

page = Nokogiri::HTML(open("http://blog.agupieware.com/2014/06/online-learning-intensive-bachelors.html"))

convert_to_markdown = ReverseMarkdown.convert(page)
markdown = File.open("Page.md", "a+")
markdown << convert_to_markdown

puts markdown
