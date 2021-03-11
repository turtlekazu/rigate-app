class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :send_to_root, only: [:new, :create, :destroy]

  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
    @curriculums = @menu.curriculums.all
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to root_path
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :pasta_name, :image)
  end

  def send_to_root
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
