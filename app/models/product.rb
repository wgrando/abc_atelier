class Product < ApplicationRecord
  def self.search(search)
  	where("name LIKE ?", "%#{search}%") 
  	where("description LIKE ?", "%#{search}%")
  end

  belongs_to :package
  belongs_to :category

  has_many :LineItem

  validates :name, :description, :price, :stock_quantity, :weight, :size_x, :size_y, :size_z, :deliverable, presence: true

  mount_uploader :avatar, AvatarUploader
end
