class Province < ApplicationRecord
	has_many :customers
	has_many :provinces
	has_many :contents

	validates :name, :tax, presence: true
end
