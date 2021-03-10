class Curriculum < ApplicationRecord
  belongs_to :menu
  has_many   :contents,       dependent: :destroy
  has_one    :exams,          dependent: :destroy
  has_many   :exam_responses, dependent: :destroy

  validates :name, presence: true
end
