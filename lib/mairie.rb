require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_townhall_email
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ableiges.html"))
	cityname = page.xpath('/html/body/div/header/section/div/div[1]/h1/small')
	puts cityname.text
	mail = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
	puts mail.text

	arr =[]
	result = Hash.new
	result[cityname.text] = mail.text
	arr << result
	puts arr

end
get_townhall_email
def get_townhall_urls

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	array = []
	citynames_array = page.css('table.Style20 a @href')
	all_cities = citynames_array.map { |citynames| citynames.text[1..-1] }
 	puts "#{all_cities}"

#all_cities.each do |email| => ensuite on a appelé email dans la def get_townhall_email dans le page= mais il ne le prenait pas en compte.
end
get_townhall_urls