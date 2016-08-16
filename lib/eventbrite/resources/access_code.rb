module Eventbrite
  class AccessCode < APIArrayResource
    def self.create(params, token=nil)
      unless event_id = params.delete(:event_id)
        raise InvalidRequestError.new('No event_id provided.')
      end

      response, token = Eventbrite.request(:post, self.all_url(event_id), token, params)
      Util.convert_to_eventbrite_object(response, token)
    end
  end
end