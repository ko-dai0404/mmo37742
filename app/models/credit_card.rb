class CreditCard < ApplicationRecord
  validates :card_name, presence: true

  belongs_to :user
end
