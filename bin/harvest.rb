$:.unshift File.join( File.dirname(__FILE__), "..", "lib")
require "fullfact"
require 'dotenv'
require 'csv'

Dotenv.load

api = FullFact::API.new(token: ENV["FF_TOKEN"])

first = true

api.harvest(search: ARGV[0], sleep: 1) do |page|
  $stderr.puts "Found #{page.count} results" if first
  first = false

  page.results.each do |result|
    puts CSV.generate_line([result["slug"], result["url"], result["headline"] ])
  end
end
