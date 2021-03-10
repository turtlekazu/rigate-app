class CreateExamResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_responses do |t|
      t.boolean    :is_done,          null: false
      t.text       :user_answer_code, null: false
      t.integer    :score,            null:false
      t.references :user,             foreign_key: true
      t.references :curriculum,       foreign_key: true
      t.timestamps
    end
  end
end
