class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name,       null: false
      t.string :pasta_name, null: false
      t.timestamps
    end
  end
end
