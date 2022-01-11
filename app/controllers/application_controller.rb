class ApplicationController < ActionController::Base
  before_action :set_menu_name

  def set_menu_name
    @menus = Menu.all
  end
end

