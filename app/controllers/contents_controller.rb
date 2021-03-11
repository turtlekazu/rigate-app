class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :send_to_root

  def new
    @content = Content.new
    @curriculum = Curriculum.find(params[:curriculum_id])
    @curriculums = Curriculum.where(menu_id: params[:curriculum_id]).all
  end

  def create
    @content = Content.new(content_params)
    @curriculum = Curriculum.find(params[:curriculum_id])
    if @content.save
      redirect_to curriculum_path(@curriculum)
    else
      render :new
    end
  end

  private

  def content_params
    params.require(:content).permit(:title, :text).merge(curriculum_id: params[:curriculum_id])
  end

  def send_to_root
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
