class User < ApplicationRecord
  has_many :lists, foreign_key: :santa_id
  has_many :lists, foreign_key: :receiver_id
  belongs_to :party

  validates :username, :email, presence: true
end
