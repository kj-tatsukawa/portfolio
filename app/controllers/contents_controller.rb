class ContentsController < ApplicationController
  before_action :set_menu_name

  def index
    @index_title = Menu.find_by(menu_url: params[:menu_url])
    @pages_title = Page.where(content_type: params[:menu_url]).order(updated_at: :desc)
  end

  def show
    @page_detail = Page.find_by(id: params[:id])
  end

  def new
    @category = Menu.all
    @new_page = Page.new
  end

  def create_post
    @new_page = Page.new(page_params)
    if @new_page.save
      redirect_to("/#{@new_page.content_type}/index")
    else
      render("contents/new")
    end
  end


  def edit
    @category = Menu.all
    @page_detail = Page.find_by(id: params[:id])
  end

  def update
    @page_detail = Page.find(params[:id])
    if @page_detail.update(page_params)
      redirect_to("/#{@page_detail.content_type}/#{@page_detail.id}")
    else
      render("contents/edit")
    end
  end

  def page_params
    params.require(:page).permit(:page_title, :content_type, :page_body)
  end

end
