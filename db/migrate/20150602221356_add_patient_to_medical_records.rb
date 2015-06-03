class AddPatientToMedicalRecords < ActiveRecord::Migration
  def change
    add_reference :medical_records, :patient, index: true
    add_foreign_key :medical_records, :patients
  end
end
