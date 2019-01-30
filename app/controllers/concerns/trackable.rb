module Trackable
  include ActiveSupport::Concern

  private

  def track(event_name)
    service = AnalyticsService.new
    user_distinct_id = current_user ? current_user.id : cookies[:distinct_id]
    service.track(user_distinct_id, event_name)
  end
end