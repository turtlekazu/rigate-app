require 'rails_helper'

RSpec.describe Content, type: :model do
  describe 'コンテンツ新規登録' do
    before do
      @content = FactoryBot.build(:content)
    end

    context 'Success' do
      it 'title, textが揃っていて、無事に登録できる' do
        expect(@content).to be_valid
      end
    end

    context 'Failure' do
      it 'titleが空では登録できない' do
        @content.title = ""
        @content.valid?
        expect(@content.errors.full_messages).to include("Title can't be blank")
      end

      it 'textが空では登録できない' do
        @content.text = ""
        @content.valid?
        expect(@content.errors.full_messages).to include("Text can't be blank")
      end

      it 'curriculumが空では登録できない' do
        @content.curriculum = nil
        @content.valid?
        expect(@content.errors.full_messages).to include("Curriculum must exist")
      end
    end
  end
end
