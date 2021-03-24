require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  describe 'カリキュラム新規登録' do
    before do
      @curriculum = FactoryBot.build(:curriculum)
    end

    context 'Success' do
      it 'nameとmenu_idが揃っていて、無事に登録できる' do
        expect(@curriculum).to be_valid
      end
    end

    context 'Failure' do
      it 'nameが空では登録できない' do
        @curriculum.name = ""
        @curriculum.valid?
        expect(@curriculum.errors.full_messages).to include("Name can't be blank")
      end

      it 'menu_idが空では登録できない' do
        @curriculum.menu = nil
        @curriculum.valid?
        expect(@curriculum.errors.full_messages).to include("Menu must exist")
      end
    end
  end
end
