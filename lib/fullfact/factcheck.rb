module FullFact
  class FactCheck

    attr_reader :detail_url

    def initialize(detail_url, response)
      @detail_url, @response = detail_url, response
    end

    def author
      body["author"]
    end

    def claims
      body["claims"]
    end

    def meta_description
      body["meta_description"]
    end

    def excerpt
      body["excerpt"]
    end

    def headline
      body["headline"]
    end

    def image_url
      body["image_url"]
    end

    def categories
      body["categories"]
    end

    def published_at
      body["published_at"]
    end

    def update_notes
      body["update_notes"]
    end

    def short_headline
      body["short_headline"]
    end

    def slug
      body["slug"]
    end

    def url
      body["url"]
    end

    def body
      if @body.nil?
        begin
          @body = JSON.parse(@response.body)
        rescue => e
#          puts e
#          puts e.backtrace
          @body = nil
        end
      end
      @body
    end

  end
end