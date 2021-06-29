class Party < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :lists
  has_many :users, through: :lists

  validates :date, :location, :price, presence: true
end
