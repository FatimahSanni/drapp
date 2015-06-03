class AddNveLeToMedicalRecords < ActiveRecord::Migration
  def change
    add_column :medical_records, :nve_le, :boolean, default: false, null: false
  end
end
