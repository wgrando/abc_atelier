class Province < ApplicationRecord
	has_many :customers
	has_many :provinces
	has_many :contents
	has_many :users

	validates :name, :tax, presence: true
end
