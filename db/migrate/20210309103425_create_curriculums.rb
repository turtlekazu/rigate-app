class CreateCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculums do |t|
      t.string     :name, null: false
      t.references :menu, foreign_key: true
      t.timestamps
    end
  end
end
