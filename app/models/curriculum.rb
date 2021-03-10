class Curriculum < ApplicationRecord
  belongs_to :menu
  has_many   :contents, dependent: :destroy

  validates :name, presence: true
end
