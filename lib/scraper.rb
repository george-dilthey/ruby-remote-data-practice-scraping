require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
header = doc.css("h1.headline-26OIBN").text
courses = doc.css(".inlineMobileLeft-2Yo002")
courses.each do |course|
    puts courses.css("title").text
    puts courses.css("copy p").text
end



binding.pry