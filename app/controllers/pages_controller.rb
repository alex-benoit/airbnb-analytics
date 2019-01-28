# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :require_login, only: [:dashboard]

  def home; end

  def about; end

  def dashboard; end
end
