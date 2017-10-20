class Doctor < ApplicationRecord
	has_many :appoints, as: :appointable
	validates_uniqueness_of :time, scope: [:first_name]
end
