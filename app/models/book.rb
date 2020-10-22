class Book < ApplicationRecord
  belongs_to :user
  has_many :store
  has_many :storage, dependent: :destroy

  validates :title, presence: true
  validates :author, presence: true
  validates :year, presence: true
end
