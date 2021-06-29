class User < ApplicationRecord
  belongs_to :party
  validates :username, :email, presence: true
end
