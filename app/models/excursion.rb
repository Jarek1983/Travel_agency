class Excursion < ApplicationRecord
  validates :country, :city, presence: true, length: {minimum: 2}
  validates :description, :particulars, presence: true, length: {minimum: 10}
  validates :price, presence: true
end
