class HomeController < ApplicationController
  before_action :set_menu_name

  def top
    @top_news = Page.all.order(updated_at: :desc).limit(10)
  end

  def new_category
    @new_category = Menu.new
  end

  def create_category
    @new_category = Menu.new(menu_params)
    if @new_category.save
      redirect_to '/top'
    else
      render 'home/new_category'
    end
  end

  def menu_params
    params.require(:menu).permit(:menu_name, :menu_url)
  end

  def delete_btn
  end

  def destroy
    menus = Menu.all
    pages = Page.all

    if menus.any?
      menus.delete_all
      if pages.any?
        pages.delete_all
      end
      flash[:notice] = "削除完了！"
      redirect_to "/top"
    else
      flash[:notice] = "件数0件！"
    end
  end

end
