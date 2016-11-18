class Package < ApplicationRecord
	has_many :products

	validates :description, presence: true
end
