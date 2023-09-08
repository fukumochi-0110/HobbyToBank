class Hobby < ApplicationRecord
  validates :hobby,presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  #belongs_to :bank
  belongs_to :user
end
