class Credit < ApplicationRecord
  belongs_to :user
  belongs_to :credit_card
end
