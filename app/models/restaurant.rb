class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  # validates :address, presence: true
  validates :category, presence: true, exclusion: { in: ['neptunian'] }
end
