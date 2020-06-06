module FullFact
  class FactCheck

    attr_reader :detail_url

    def initialize(detail_url, response)
      @detail_url, @response = detail_url, response
    end

    def author
      resp_body["author"]
    end

    def claims
      resp_body["claims"]
    end

    def meta_description
      resp_body["meta_description"]
    end

    def excerpt
      resp_body["excerpt"]
    end

    def headline
      resp_body["headline"]
    end

    def image_url
      resp_body["image_url"]
    end

    def categories
      resp_body["categories"]
    end

    def published_at
      resp_body["published_at"]
    end

    def update_notes
      resp_body["update_notes"]
    end

    def short_headline
      resp_body["short_headline"]
    end

    def slug
      resp_body["slug"]
    end

    def url
      resp_body["url"]
    end

    def body
      resp_body["body"]
    end

    def parse_body
      Nokogiri::HTML.parse(body)
    end

    def resp_body
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