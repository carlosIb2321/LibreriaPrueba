class Store < ApplicationRecord

  belongs_to :user
  has_many :storage, dependent: :destroy
  validates :codename, presence: true
end
