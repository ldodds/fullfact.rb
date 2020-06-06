module FullFact

  class Page

    attr_reader :uri, :response

    def initialize(uri, response)
      @uri, @response = uri, response
    end

    def count
      body["count"]
    end

    def last_page?
      next_page.nil?
    end

    def first_page?
      previous_page.nil?
    end

    def next_page
      body["next"]
    end

    def previous_page
      body["previous"]
    end

    def results
      body["results"]
    end

    def body
      if @body.nil?
        begin
          @body = JSON.parse(response.body)
        rescue => e
          @body = nil
        end
      end
      @body
    end

  end
end