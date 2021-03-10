class Curriculum < ApplicationRecord
  belongs_to :menu
  has_many   :contents

  validates :name, presence: true
end
