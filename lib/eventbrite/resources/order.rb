module Eventbrite
  class Order < APIArrayResource
     def self.retrieve(id, params={}, token=nil)
      instance = self.new(id, token)
      instance.retrieve_options = params
      instance.refresh
      instance
    end
  end
end
