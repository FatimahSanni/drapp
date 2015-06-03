class CreateOcularDiseases < ActiveRecord::Migration
  def change
    create_table :ocular_diseases do |t|
      t.string :name
      t.belongs_to :medical_record, index: true

      t.timestamps null: false
    end
    add_foreign_key :ocular_diseases, :medical_records
  end
end
