class Place < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :pictures, dependent: :destroy

  validates :name, :lat, :lng, :visit_date, presence: true
end