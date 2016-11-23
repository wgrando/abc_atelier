class Province < ApplicationRecord
	has_many :customers
	has_many :provinces

	validates :name, :tax, presence: true
end
