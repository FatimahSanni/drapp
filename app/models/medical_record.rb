class MedicalRecord < ActiveRecord::Base
	belongs_to :patient
	has_many :ocular_diseases, dependent: :destroy
	accepts_nested_attributes_for :ocular_diseases, allow_destroy: true, reject_if: :all_blank

	has_many :advices, dependent: :destroy
	accepts_nested_attributes_for :advices, allow_destroy: true, reject_if: :all_blank

	def diagnosis_re
		if self.mild_re == true
			"Mild NPDR"
		elsif self.severe_re == true
			"Severe NPDR"
		elsif self.pdr_re == true
			"PDR"
		else
			"No Diabetic Retinopathy"
		end		
	end

	def advice_re

	end

	def diagnosis_le
		if self.mild_le == true
			"Moderate NPDR"
		elsif self.severe_le == true
			"Severe NPDR"
		elsif self.pdr_le == true
			"PDR"
		elsif self.me_le == true
			"Macula Edema"
		else
			"No Diabetic Retinopathy"
		end
	end

	def advice_le
	end
end
