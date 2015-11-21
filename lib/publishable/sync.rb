module Publishable
  module Sync
    EVENT_NAME = 'SYNC'
    extend ActiveSupport::Concern
    included do
      after_commit :publish_sync
    end

    def publish_sync
      Publishable::Events::EventsHelper.fire_sync EVENT_NAME type: self.type, id: self.id
    end
  end
end