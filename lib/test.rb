require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
citynames = page.xpath('//a[contains(@href, "./95/")]').
puts citynames.text
