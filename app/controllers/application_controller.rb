# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Clearance::Controller

  before_action :set_unique_tracker

  private

  def set_unique_tracker
    cookies[:distinct_id] ||= { value: SecureRandom.uuid, expires: 5.year.from_now }
  end
end
