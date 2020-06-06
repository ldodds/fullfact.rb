# Full Fact API Ruby Client

Quickly hacked together client for the [FullFact Alpha API](https://fullfact-api.herokuapp.com/)

The API itself is simple and easy to use. This code just provides some convenience 
methods for interacting with the API to grab a list of fact checks, search the API, etc.

# Searching and walking the API

```ruby

#supply token to authenticate
api = FullFact::API.new(token: ...)

#optionally provide search term to restrict results
#recommended: include a sleep (ms) parameter to be polite
#block is called for each page until API doesn't return further results
api.harvest(search: ..., sleep: 1) do |page|
  $stderr.puts "Found #{page.count} results" if first

  #walk through results
  page.results.each do |result|
    #result is a minimal fact check response
    #to do an extra request to grab the full detail
    #factcheck = api.fact_check(result["detail_url"])

    #do something with the data
  end
end
```

# Usage Examples

See

* `bin/sample.rb` -- grabs the first page of fact checks and prints headline and author
* `bin/harvest.rb` -- perform a search against the API and dump the slug, url, headline to CSV

By default these scripts read the API token from an environment variable called `FF_TOKEN`.

