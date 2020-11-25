class Giver < ApplicationRecord
  belongs_to :taker
  has_many :items
end
