class ContentsController < ApplicationController
  def new
    @content = Content.new
    @curriculum = Curriculum.find(params[:curriculum_id])
    @curriculums = Curriculum.where(menu_id: params[:curriculum_id]).all
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to curriculum_path(content_params[:curriculum_id])
    else
      render :new
    end
  end

  private

  def content_params
    params.require(:content).permit(:title, :text).merge(curriculum_id: params[:curriculum_id])
  end
end
