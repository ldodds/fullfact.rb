# Full Fact API Ruby Client

Quickly hacked together client for the [FullFact Alpha API](https://fullfact-api.herokuapp.com/)

The API itself is simple and easy to use. This code just provides some convenience 
methods for interacting with the API to grab a list of fact checks, search the API, etc.

# Usage Examples

See

* `bin/sample.rb` -- grabs the first page of fact checks and prints headline and author
* `bin/harvest.rb` -- perform a search against the API and dump the slug, url, headline to CSV

By default these scripts read the API token from an environment variable called `FF_TOKEN`.

