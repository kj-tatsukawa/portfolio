class ApplicationController < ActionController::Base
  before_action :set_menu_name

  def set_menu_name
    @menus = Menu.where.not(id: 99)
  end

end
