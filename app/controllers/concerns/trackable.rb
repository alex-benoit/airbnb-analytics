# frozen_string_literal: true

module Trackable
  include ActiveSupport::Concern

  private

  def track(event_name, metadata = {})
    user_distinct_id = current_user ? current_user.id : cookies[:distinct_id]
    puts user_distinct_id
    service.track(user_distinct_id, event_name, metadata)
  end

  def register_new_user
    service.alias_new_user(current_user.id, cookies[:distinct_id])
    service.register_new_email(current_user.id, current_user.email)
  end

  def service
    @service ||= AnalyticsService.new
  end
end
