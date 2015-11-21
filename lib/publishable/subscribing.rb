Publishable::Events:EventsHelper.subscribe('SYNC') do |payload|
  payload[:event_name] = 'SYNC'
  Publishable::EventHandlers::Default.new.handle_event(payload)
end

Publishable::Events:EventsHelper.subscribe('ASYNC') do |payload|
  payload[:event_name] = 'ASYNC'
  Publishable::EventHandlers::Default.new.handle_event(payload)
end