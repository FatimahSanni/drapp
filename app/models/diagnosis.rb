class Diagnosis < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_many :counsels, dependent: :destroy
end
