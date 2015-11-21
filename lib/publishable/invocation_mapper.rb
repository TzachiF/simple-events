require 'singleton'
module Publishable
  class InvocationMapper
    def initialize
      # create the mapping
    end

    def subscriber(event_type, publisher_type)
      subscriber = map["#{event_type}:#{publisher_type}"]
      subscriber.constantize.new
    end

    def add(event_type, publisher_type, subscriber_type)
    end

    def remove((event_type, publisher_type, subscriber_type)
    end

  end
end