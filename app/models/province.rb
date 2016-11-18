class Province < ApplicationRecord
	has_many :customers

	validates :name, :tax, presence: true
end
