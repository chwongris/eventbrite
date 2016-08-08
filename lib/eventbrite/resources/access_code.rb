module Eventbrite
  class AccessCode < APIArrayResource
    def self.create(body, token=nil)
      response, token = Eventbrite.request(:post, url, token, body)
      Util.convert_to_eventbrite_object(response, token)
    end
  end

  private

  def self.access_code_url
    url + '/access_codes'
  end
end
