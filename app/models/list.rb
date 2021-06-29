class List < ApplicationRecord
  belongs_to :party
  belongs_to :santa, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
