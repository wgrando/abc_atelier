class Product < ApplicationRecord
  belongs_to :package
  belongs_to :category

  has_many :LineItem

  validates :name, :description, :image, :price, :stock_quantity, :weight, :size_x, :size_y, :size_z, :deliverable, presence: true
end
