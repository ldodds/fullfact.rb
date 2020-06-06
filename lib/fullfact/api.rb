module FullFact
  class API
    DEFAULT_ENDPOINT = "https://fullfact-api.herokuapp.com/api/alpha"

    attr_reader :endpoint, :current_uri

    def initialize(endpoint: DEFAULT_ENDPOINT, token: nil)
      @endpoint = endpoint
      @token = token
    end

    def fact_check_url
      @endpoint + "/fact_checks/"
    end

    #first page
    def fact_checks(search: nil)
      response = RestClient::Request.execute( url: fact_check_url, method: :get, headers: {params: {token: @token, search: search}} )
      return Page.new( fact_check_url, response )
    end

    def fact_check(detail_url)
      response = RestClient::Request.execute( url: detail_url, method: :get, headers: {params: {token: @token}} )
      return FactCheck.new(detail_url, response)
    end

    #all pages
    def harvest(sleep=0)
      page = nil
    end

  end
end