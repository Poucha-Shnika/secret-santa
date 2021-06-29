class Party < ApplicationRecord
  has_many :lists
  has_many :users

end
