require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe 'メニュー新規登録' do
    before do
      @menu = FactoryBot.build(:menu)
    end

    context 'Success' do
      it 'name, pasta_name, image全て揃っていて、無事に登録できる' do
        expect(@menu).to be_valid
      end
    end

    context 'Failure' do
      it 'nameが空では登録できない' do
        @menu.name = ""
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Name can't be blank")
      end

      it 'pasta_nameが空では登録できない' do
        @menu.pasta_name = ""
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Pasta name can't be blank")
      end

      it 'imageが空では登録できない' do
        @menu.image = nil
        @menu.valid?
        expect(@menu.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
