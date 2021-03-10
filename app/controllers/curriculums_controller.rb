class CurriculumsController < ApplicationController
  def show
  end

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

  private

  def curriculum_params
    params.require(:curriculum).permit(:name, :menu_id)
  end
end
