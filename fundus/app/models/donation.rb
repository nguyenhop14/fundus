class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :cause
end
