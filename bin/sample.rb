$:.unshift File.join( File.dirname(__FILE__), "..", "lib")
require "fullfact"
require 'dotenv'
require 'pp'

Dotenv.load

api = FullFact::API.new(token: ENV["FF_TOKEN"])

page = api.fact_checks(search: ARGV[0])

page.results.each do |result|
  fc = api.fact_check(result["detail_url"])
  puts fc.headline, fc.author
end
