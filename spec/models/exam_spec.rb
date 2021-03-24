require 'rails_helper'

RSpec.describe Exam, type: :model do
  describe '練習問題新規登録' do
    before do
      @exam = FactoryBot.build(:exam)
    end

    context 'Success' do
      it 'question, question_code, answer_code, explanationが全て揃っていて、無事に登録できる' do
        expect(@exam).to be_valid
      end
    end

    context 'Failure' do
      it 'questionが空では登録できない' do
        @exam.question = ""
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Question can't be blank")
      end

      it 'question_codeが空では登録できない' do
        @exam.question_code = ""
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Question code can't be blank")
      end

      it 'answer_codeが空では登録できない' do
        @exam.answer_code = ""
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Answer code can't be blank")
      end

      it 'explanationが空では登録できない' do
        @exam.explanation = ""
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Explanation can't be blank")
      end

      it 'curriculum_idが空では登録できない' do
        @exam.curriculum = nil
        @exam.valid?
        expect(@exam.errors.full_messages).to include("Curriculum must exist")
      end
    end
  end
end
