class AddCounselToMedicalRecords < ActiveRecord::Migration
  def change
    add_reference :medical_records, :counsel, index: true
    add_foreign_key :medical_records, :counsels
  end
end
