json.array!(@medical_records) do |medical_record|
  json.extract! medical_record, :id, :micro_re, :micro_le, :haem_re, :haem_le, :hard_re, :hard_le, :csme_re, :csme_le, :irma_re, :irma_le, :nvd_re, :nvd_le, :nve_re, :nvd_le, :vit_re, :vit_le, :trd_re, :trd_le, :focal_re, :focal_le, :prp_re, :prp_le, :post_re, :post_le, :hazy_re, :hazy_le, :npdr_re, :mild_re, :mild_le, :severe_re, :severe_le, :pdr_re, :pdr_le, :me_re, :me_le, :oct_re, :oct_le, :ffa_re, :ffa_le, :injection_re, :injection_le, :laser_re, :laser_le, :fup_3_re, :fup_3_le, :fup_6_re, :fup_6_le
  json.url medical_record_url(medical_record, format: :json)
end
