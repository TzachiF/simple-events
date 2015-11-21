module Publishable
  module EventHandlers
    class Default
      def handle_event(payload = {})
        Publishable::InvocationMapper.instance.subscriber(payload[:event_name], payload[:type]).handle(payload[:id])
      end
    end
  end
end