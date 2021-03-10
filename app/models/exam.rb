class Exam < ApplicationRecord
  belongs_to :curriculum

  validates :question,      presence: true
  validates :question_code, presence: true
  validates :answer_code,   presence: true
  validates :explanation,  presence: true
end
