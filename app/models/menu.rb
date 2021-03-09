class Menu < ApplicationRecord
  has_one_attached :image
  has_many         :curriculums

  validates :name,       presence: true
  validates :pasta_name, presence: true
  validates :image,      presence: true
end
