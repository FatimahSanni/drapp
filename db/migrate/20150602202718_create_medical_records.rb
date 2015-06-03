class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.boolean :micro_re, default: false, null: false
      t.boolean :micro_le, default: false, null: false
      t.boolean :haem_re, default: false, null: false
      t.boolean :haem_le, default: false, null: false
      t.boolean :hard_re, default: false, null: false
      t.boolean :hard_le, default: false, null: false
      t.boolean :csme_re, default: false, null: false
      t.boolean :csme_le, default: false, null: false
      t.boolean :irma_re, default: false, null: false
      t.boolean :irma_le, default: false, null: false
      t.boolean :nvd_re, default: false, null: false
      t.boolean :nvd_le, default: false, null: false
      t.boolean :nve_re, default: false, null: false
      t.boolean :nvd_le, default: false, null: false
      t.boolean :vit_re, default: false, null: false
      t.boolean :vit_le, default: false, null: false
      t.boolean :trd_re, default: false, null: false
      t.boolean :trd_le, default: false, null: false
      t.boolean :focal_re, default: false, null: false
      t.boolean :focal_le, default: false, null: false
      t.boolean :prp_re, default: false, null: false
      t.boolean :prp_le, default: false, null: false
      t.boolean :post_re, default: false, null: false
      t.boolean :post_le, default: false, null: false
      t.boolean :hazy_re, default: false, null: false
      t.boolean :hazy_le, default: false, null: false
      t.boolean :npdr_re, default: false, null: false
      t.boolean :mild_re, default: false, null: false
      t.boolean :mild_le, default: false, null: false
      t.boolean :severe_re, default: false, null: false
      t.boolean :severe_le, default: false, null: false
      t.boolean :pdr_re, default: false, null: false
      t.boolean :pdr_le, default: false, null: false
      t.boolean :me_re, default: false, null: false
      t.boolean :me_le, default: false, null: false
      t.boolean :oct_re, default: false, null: false
      t.boolean :oct_le, default: false, null: false
      t.boolean :ffa_re, default: false, null: false
      t.boolean :ffa_le, default: false, null: false
      t.boolean :injection_re, default: false, null: false
      t.boolean :injection_le, default: false, null: false
      t.boolean :laser_re, default: false, null: false
      t.boolean :laser_le, default: false, null: false
      t.boolean :fup_3_re, default: false, null: false
      t.boolean :fup_3_le, default: false, null: false
      t.boolean :fup_6_re, default: false, null: false
      t.boolean :fup_6_le, default: false, null: false

      t.timestamps null: false
    end
  end
end
