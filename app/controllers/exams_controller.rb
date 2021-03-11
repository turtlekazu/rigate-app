class ExamsController < ApplicationController
  before_action :authenticate_user!
  before_action :send_to_root
  
  def new
    @exam = Exam.new
    @curriculum = Curriculum.find(params[:curriculum_id])
  end

  def create
    @exam = Exam.new(exam_params)
    @curriculum = Curriculum.find(params[:curriculum_id])
    if @exam.save
      redirect_to curriculum_path(@curriculum)
    else
      render :new
    end
  end

  private

  def exam_params
    params.require(:exam).permit(:question, :question_code, :answer_code,
                                 :explanation).merge(curriculum_id: params[:curriculum_id])
  end

  def send_to_root
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
