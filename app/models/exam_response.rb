class ExamResponse < ApplicationRecord
  belongs_to :user
  belongs_to :curriculum

  validates :user_answer_code, presence: true
  validates :score,            presence: true
end
