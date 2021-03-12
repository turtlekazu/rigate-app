class CurriculumsController < ApplicationController
  before_action :authenticate_user!
  before_action :send_to_root, only: [:new, :create]

  def new
    @curriculum = Curriculum.new
    @menus = Menu.all
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)
    if @curriculum.save
      redirect_to menu_path(curriculum_params[:menu_id])
    else
      render :new
    end
  end

  def show
    @curriculum = Curriculum.find(params[:id])
    @contents = @curriculum.contents.all
    @exam = @curriculum.exam
    @menu = @curriculum.menu
  end

  private

  def curriculum_params
    params.require(:curriculum).permit(:name, :menu_id)
  end

  def send_to_root
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
