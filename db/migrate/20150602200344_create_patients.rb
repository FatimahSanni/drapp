class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :mrn
      t.string :name
      t.string :gender
      t.date :dob
      t.string :phone
      t.boolean :diabetic, default: false, null: false
      t.string :diab_duration
      t.boolean :hypertensive, default: false, null: false
      t.string :hyp_duration
      t.string :va_re
      t.string :va_le
      t.string :iop_re
      t.string :iop_le
      t.string :hbaic

      t.timestamps null: false
    end
  end
end
