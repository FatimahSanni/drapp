json.array!(@patients) do |patient|
  json.extract! patient, :id, :mrn, :name, :gender, :dob, :phone, :diabetic, :diab_duration, :hypertensive, :hyp_duration, :va_re, :va_le, :iop_re, :iop_le, :hbaic
  json.url patient_url(patient, format: :json)
end
