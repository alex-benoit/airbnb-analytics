# frozen_string_literal: true

class UsersController < Clearance::UsersController
  include Trackable

  def create
    super
    register_new_user if current_user
  end
end
