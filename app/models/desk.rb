class Desk < ApplicationRecord
	has_many :appoints, as: :appointable
	validates_uniqueness_of :time, scope: [:name, :location]
end
