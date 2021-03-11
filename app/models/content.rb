class Content < ApplicationRecord
  belongs_to :curriculum

  validates :text, presence: true
end
