class Order < ApplicationRecord
  belongs_to :OrderStatus
  belongs_to :customer

  has_many :LineItem
end
