class Patient < ActiveRecord::Base
	belongs_to :user
	has_many :medical_records, dependent: :destroy
	after_create :set_mrn

	Gender = %w(Male Female)

	validates :name, :gender, :phone, presence: true
	validates :name, uniqueness: {scope: :phone, message: ' with this phone number is already registered in the system.'}

	def set_mrn
		if self.id < 10
			update_attribute(:mrn, "DR00#{self.id}C")
		elsif self.id < 100
			update_attribute(:mrn, "DR0#{self.id}C")
		elsif self.id < 1000
			update_attribute(:mrn, "DR0#{self.id}C")
		else
			update_attribute(:mrn, "DR#{self.id}C")
		end
	end
end
