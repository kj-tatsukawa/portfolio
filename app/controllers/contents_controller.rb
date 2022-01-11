class ContentsController < ApplicationController
  before_action :set_menu_name

  def index
    @index_title = Menu.find_by(menu_url: params[:menu_url])
    @pages_title = Page.where(content_type: params[:menu_url])
  end

  def show
    @page_detail = Page.find_by(id: params[:id])
  end

  def new
    @new_page = Page.new
  end

  def create
    @new_page = Page.new(new_page_params)
    if @new_page.save
      redirect_to("/#{@new_page.content_type}/index")
    else
      render("contents/new")
    end
  end

  def new_page_params
    params.require(:page).permit(:page_title, :page_body, :content_type)
  end

  def edit
    @page_detail = Page.find_by(id: params[:id])
  end

  def update
    @page_detail = Page.find_by(id: params[:id])
    @page_detail.page_title = params[:page_title]
    @page_detail.page_body = params[:page_body]
    if @page_detail.save
      redirect_to("/#{@page_detail.content_type}/#{@page_detail.id}")
    else
      render("contents/edit")
    end
  end

end
