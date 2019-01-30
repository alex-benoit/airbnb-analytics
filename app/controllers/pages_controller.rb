# frozen_string_literal: true

class PagesController < ApplicationController
  include Trackable

  before_action :require_login, only: [:dashboard]

  def home
    @active_tab = :home
    track('home-page-visited')
  end

  def about
    @active_tab = :about
    track('about-page-visited')
  end

  def dashboard
    @active_tab = :dashboard
    track('dashboard-page-visited')
  end
end
