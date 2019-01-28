# frozen_string_literal: true

class AnalyticsService
  def initialize
    @tracker = Mixpanel::Tracker.new(Rails.application.credentials.mixpanel_project_token)
  end

  def track(user_id, event_name)
    @tracker.track(user_id, event_name)
  end
end
