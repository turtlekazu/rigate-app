class Curriculum < ApplicationRecord
  belongs_to :menu
  has_many   :contents, dependent: :destroy
  has_many   :exams,    dependent: :destroy

  validates :name, presence: true
end
