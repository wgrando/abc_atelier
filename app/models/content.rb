class Content < ApplicationRecord
  belongs_to :province

  validates :about, :address, :city, :postal_code, :email, :phone, :province, presence: true
end
