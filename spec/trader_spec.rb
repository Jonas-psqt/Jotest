require_relative '../lib/trader'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("https://coinmarketcap.com/fr/all/views/all/"))

describe "the cryp method" do 
	it "should have more than 4 symbols" do
		expect(hash.size).to be > 4
	end	
end

