class User < ApplicationRecord
  has_many :parties, foreign_key: :host_id
  has_many :lists, foreign_key: :santa_id
  has_many :lists, foreign_key: :receiver_id

  validates :username, :email, presence: true
end
