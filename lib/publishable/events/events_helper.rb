module Publishable
  module Events
    class EventsHelper

    # write block with the name of event
    def self.subscribe(event_name)
      ActiveSupport::Notifications.subscribe(event_name) do |name, start, finish, id, payload|
        begin
          yield(payload)
        rescue Exception => e
          Rails.logger.error("Failed to run event #{event_name}, Exception #{e}, #{e.backtrace}")
        end
      end
    end

    # payload is the data hash {id:..., name....}
    def self.fire_sync(event_name, payload = {})
      ActiveSupport::Notifications.instrument(event_name, payload)
    end
  end
end