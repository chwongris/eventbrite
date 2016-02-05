module Eventbrite
  class Order < APIArrayResource
    def self.url
      "/orders"
    end

    def self.retrieve(id, params={}, token=nil)
      response, token = Eventbrite.request(:get, url, token, params)
      Util.convert_to_eventbrite_object(response, token)
    end
  end
end
