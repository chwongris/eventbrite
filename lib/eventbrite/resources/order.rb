module Eventbrite
  class Order < APIArrayResource
     def self.retrieve(user_id, params={}, token=nil)
      instance = self.new(id, token, params)
      instance.refresh
      instance
    end
  end
end
