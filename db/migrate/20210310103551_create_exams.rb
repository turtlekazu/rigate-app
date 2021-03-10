class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string     :question,      null: false
      t.text       :question_code, null: false
      t.text       :answer_code,   null: false
      t.text       :explaination,  null: false
      t.references :curriculum,    foreign_key: true
      t.timestamps
    end
  end
end
