class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, :track_number, presence: true
end
