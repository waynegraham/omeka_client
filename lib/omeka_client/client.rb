module OmekaClient

  class Client

    attr_accessor :endpoint, :api_key, :connection

    def initialize(site_url, api_key = nil )
      @endpoint = site_url + "/api"
      @api_key = api_key
      @connection = Rest::Client.new
    end

    def site
      result =  self.rest.get(self.endpoint + "api/site")
      JSON.parse(result.body)
    end

  end

end