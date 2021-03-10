class ExamResponsesController < ApplicationController
  def new
    @exam_response = ExamResponse.new
    @curriculum = Curriculum.find(params[:curriculum_id])
  end

  def create
    @exam_response = ExamResponse.new(exam_response_params)
    @curriculum = Curriculum.find(params[:curriculum_id])
    if @exam_response.save
      redirect_to menu_path(@curriculum.menu_id)
    else
      render :new
    end
  end

  private

  def exam_response_params
    params.require(:exam_response).permit(:is_done, :user_answer_code, :score).merge(user_id: current_user.id,curriculum_id: params[:curriculum_id])
  end
end
