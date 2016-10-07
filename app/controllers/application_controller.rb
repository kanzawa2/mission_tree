class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_root_missions

  private

  def set_root_missions
    @root_missions = Mission.roots
  end
end
