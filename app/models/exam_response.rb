class ExamResponse < ApplicationRecord
  belongs_to :user
  belongs_to :curriculum

  with_options presence: true do
    invalid_answer = /Input your answer with markdown. Like:/.freeze
    validates :user_answer_code, format: { without: invalid_answer }
  end
end
