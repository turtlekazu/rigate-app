class ExamResponse < ApplicationRecord
  belongs_to :user
  belongs_to :curriculum

  with_options presence: true do
    INVALID_ANSWER = /Input your answer with markdown. Like:/
    validates :user_answer_code, format: { without: INVALID_ANSWER }
  end
end
