class ExamResponsesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_exam
  before_action :send_to_exam_new

  def new
    @exam_response = ExamResponse.new
    @curriculum = Curriculum.find(params[:curriculum_id])
    @menu = @curriculum.menu
  end

  def create
    @exam_response = ExamResponse.new(exam_response_params)
    @curriculum = Curriculum.find(params[:curriculum_id])
    @menu = @curriculum.menu
    if @exam_response.save
      redirect_to edit_curriculum_exam_response_path(@curriculum.id, @exam_response.id)
    else
      render :new
    end
  end

  def edit
    @exam_response = ExamResponse.where(user_id: current_user.id, curriculum_id: params[:curriculum_id]).last
    @curriculum = Curriculum.find(params[:curriculum_id])
    @menu = @curriculum.menu
  end

  def update
    @exam_response = ExamResponse.where(user_id: current_user.id, curriculum_id: params[:curriculum_id]).last
    @curriculum = Curriculum.find(params[:curriculum_id])
    @menu = @curriculum.menu
    if @exam_response.update(exam_response_params)
      redirect_to menu_path(@curriculum.menu_id)
    else
      render :edit
    end
  end

  private

  def exam_response_params
    params.require(:exam_response).permit(:is_done, :user_answer_code, :score).merge(user_id: current_user.id,
                                                                                     curriculum_id: params[:curriculum_id])
  end

  def find_exam
    @exam = Exam.where(curriculum_id: params[:curriculum_id]).last
  end

  def send_to_exam_new
    if @exam == nil
      redirect_to new_curriculum_exam_path
    end
  end
end
