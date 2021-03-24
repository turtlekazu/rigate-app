class Content < ApplicationRecord
  belongs_to :curriculum

  validates :title, presence: true
  validates :text, presence: true
end
