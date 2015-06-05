class MedicalRecord < ActiveRecord::Base
	after_save :set_report_re
	belongs_to :counsel
	belongs_to :patient
	has_many :ocular_diseases, dependent: :destroy
	accepts_nested_attributes_for :ocular_diseases, allow_destroy: true, reject_if: :all_blank

	has_many :advices, dependent: :destroy
	accepts_nested_attributes_for :advices, allow_destroy: true, reject_if: :all_blank


	private

	def set_report_re
		ndr = Counsel.find(1).id
		mild = Counsel.find(2).id
		moderate = Counsel.find(3).id
		severe = Counsel.find(4).id
		pdr = Counsel.find(5).id
		# me = Counsel.where(name: "No Diabetic retinopathy")

		case "#{self.diag_re} #{self.diag_le}"
		when "PDR PDR"
			update_column(:counsel_id, pdr)
		when "PDR NADR"
			update_column(:counsel_id, pdr)
		when "NADR PDR"
			update_column(:counsel_id, pdr)
		when "PDR Mild NPDR"
			update_column(:counsel_id, pdr)
		when "Mild NPDR PDR"
			update_column(:counsel_id, pdr)
		when "PDR Moderate NPDR"
			update_column(:counsel_id, pdr)
		when "Moderate NPDR PDR"
			update_column(:counsel_id, pdr)
		when "PDR Severe NPDR"
			update_column(:counsel_id, pdr)
		when "Severe NPDR PDR"
			update_column(:counsel_id, pdr)
		when "Severe NPDR Severe NPDR"
			update_column(:counsel_id, severe)
		when "Severe NPDR NADR"
			update_column(:counsel_id, severe)
		when "NADR Severe NPDR"
			update_column(:counsel_id, severe)
		when "Severe NPDR Moderate NPDR"
			update_column(:counsel_id, severe)
		when "Moderate NPDR Severe NPDR"
			update_column(:counsel_id, severe)
		when "Severe NPDR Mild NPDR"
			update_column(:counsel_id, severe)
		when "Mild NPDR Severe NPDR"
			update_column(:counsel_id, severe)
		when "Moderate NPDR Moderate NPDR"
			update_column(:counsel_id, moderate)
		when"NADR Moderate NPDR"
			update_column(:counsel_id, moderate)
		when "Moderate NPDR NADR"
			update_column(:counsel_id, moderate)
		when "Mild NPDR Moderate NPDR"
			update_column(:counsel_id, moderate)
		when "Moderate NPDR Mild NPDR"
			update_column(:counsel_id, moderate)
		when "Mild NPDR Mild NPDR"
			update_column(:counsel_id, mild)
		when "Mild NPDR NADR"
			update_column(:counsel_id, mild)
		when "NADR Mild NPDR"
				update_column(:counsel_id, mild)
		else
			update_column(:counsel_id, ndr)
		end
	end
end
