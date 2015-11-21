module Publishable
  module Workers
  class PublisherWorker
    include Sidekiq::Worker
    EVENT_NAME = 'ASYNC'

    def perform(options = {})
      options    = options.with_indifferent_access 
      Publishable::Events::EventsHelper.fire_sync EVENT_NAME type: options[:type], id: options[:id]
    end
  end
end