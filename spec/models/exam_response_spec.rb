require 'rails_helper'

RSpec.describe ExamResponse, type: :model do
  describe 'ユーザー解答新規登録' do
    before do
      @exam_response = FactoryBot.build(:exam_response)
    end

    context 'Success' do
      it 'user_answer_code, scoreが揃っていて、無事に登録できる' do
        expect(@exam_response).to be_valid
      end
    end

    context 'Failure' do
      it 'user_answer_codeが空で登録できない' do
        @exam_response.user_answer_code = ""
        @exam_response.valid?
        expect(@exam_response.errors.full_messages).to include("User answer code can't be blank")
      end

      it 'user_idが空で登録できない' do
        @exam_response.user = nil
        @exam_response.valid?
        expect(@exam_response.errors.full_messages).to include("User must exist")
      end

      it 'curriculum_idが空で登録できない' do
        @exam_response.curriculum = nil
        @exam_response.valid?
        expect(@exam_response.errors.full_messages).to include("Curriculum must exist")
      end
    end
  end
end
