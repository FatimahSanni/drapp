class AddDiagReAndDiagLeToMedicalRecords < ActiveRecord::Migration
  def change
    add_column :medical_records, :diag_re, :string
    add_column :medical_records, :diag_le, :string
  end
end
