class OrderStatus < ApplicationRecord
	has_many :Order

	validates :description, presence: true
end
