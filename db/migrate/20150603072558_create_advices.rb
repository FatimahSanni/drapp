class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :todo
      t.belongs_to :medical_record, index: true

      t.timestamps null: false
    end
    add_foreign_key :advices, :medical_records
  end
end
