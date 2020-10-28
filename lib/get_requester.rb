require 'net/http'
require 'json'
require 'open-uri'

class GetRequester
    def initialize (url)
        @url = url 
    end

    def  get_response_body
        array = URI.parse(@url)
        Net::HTTP.get_response(array).body
       

    end

    def parse_json
        JSON.parse(get_response_body)
    end

end 
