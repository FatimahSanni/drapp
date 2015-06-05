class MedicalRecord < ActiveRecord::Base
	after_save :set_report_re
	belongs_to :counsel
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

	def diagnosis_le
		if self.mild_le == true
			"Mild NPDR"
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

	private

	def set_report_re
		ndr = Counsel.find_by_name("No Diabetic retinopathy").id
		mild = Counsel.find_by_name("Mild NPDR").id
		moderate = Counsel.find_by_name("Moderate NPDR").id
		severe = Counsel.find_by_name("Severe NPDR").id
		# pdr = Counsel.where(name: "No Diabetic retinopathy")
		# me = Counsel.where(name: "No Diabetic retinopathy")
		if self.diagnosis_re == "No Diabetic Retinopathy"
			update_column(:counsel_id, ndr)
		elsif self.diagnosis_re == "Mild NPDR"
			update_column(:counsel_id, moderate)
		elsif self.diagnosis_re == "Severe NPDR"
			update_column(:counsel_id, severe)
				
		end
	end

	def set_report_le
	end
end
