module Publishable
  module Concerns
    module Async
      extend ActiveSupport::Concern
      included do
        after_commit :publish_async
      end

      def publish_async
        Publishable::Workers::PusblisherWorker.perform_async self.type, self.id
      end
    end
  end
end