# frozen_string_literal: true

class AnalyticsService
  def initialize
    @tracker = Mixpanel::Tracker.new(Rails.application.credentials.mixpanel_project_token)
  end

  def track(user_id, event_name, metadata)
    puts user_id
    p @tracker.track(user_id, event_name, metadata)
  end

  def alias_new_user(new_user_id, old_user_id)
    @tracker.alias(new_user_id, old_user_id)
  end

  def register_new_email(new_user_id, new_email)
    @tracker.people.set(new_user_id, '$email': new_email)
  end
end
