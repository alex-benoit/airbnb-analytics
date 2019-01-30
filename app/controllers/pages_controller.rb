# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :require_login, only: [:dashboard]

  def home
    @active_tab = :home
  end

  def about
    @active_tab = :about
  end

  def dashboard
    @active_tab = :dashboard
  end
end
