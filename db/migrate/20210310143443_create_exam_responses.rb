class CreateExamResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :exam_responses do |t|
      t.text       :user_answer_code, null: false
      t.integer    :score
      t.references :user,             foreign_key: true
      t.references :curriculum,       foreign_key: true
      t.timestamps
    end
  end
end
