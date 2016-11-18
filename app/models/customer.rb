class Customer < ApplicationRecord
  belongs_to :province

  has_many :orders

  validates :full_name, :address, :city, :postal_code, :email, :phone, presence: true
end
