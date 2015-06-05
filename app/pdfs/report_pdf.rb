class ReportPdf < Prawn::Document
	def initialize(m)
		super()
		@medical_record = m
		text "Eye Foundation Hospital", style: :bold, size: 30, align: :center
		text "27, Isaac John Street, Ikeja GRA", size: 10, align: :center
		text "info@eyefoundationhospital.com | www.eyefoundationhospital.com", size: 10, align: :center
		move_down 40
		text "<strong>Name:</strong> #{m.patient.name}", inline_format: true, size: 10
		text "<strong>Gender:</strong> #{m.patient.gender}", inline_format: true, size: 10
		text "<strong>Age:</strong> #{m.patient.age}", inline_format: true, size: 10
		move_down 10
		text "<strong>Diagnosis RE:</strong> #{m.diag_re} <strong>LE:</strong> #{m.diag_le}", inline_format: true, size: 10
		if m.ocular_diseases.exists?
		text "<strong>Ocular Diseases:</strong> #{m.ocular_diseases.map(&:name).join(", ")}", inline_format: true, size: 10
	else
		text "<strong>Ocular Diseases:</strong> None", inline_format: true, size: 10
	end
		move_down 10
		text "<strong>Medical Report</strong>", inline_format: true
		text "#{m.counsel.counsel}"
		move_down 30
		text "<strong>Sign: </strong>", inline_format: true
	end
end