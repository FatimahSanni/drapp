class AddCottonReAndCottonLeToMedicalRecords < ActiveRecord::Migration
  def change
    add_column :medical_records, :cotton_re, :boolean
    add_column :medical_records, :cotton_le, :boolean
  end
end
