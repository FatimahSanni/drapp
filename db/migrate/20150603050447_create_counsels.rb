class CreateCounsels < ActiveRecord::Migration
  def change
    create_table :counsels do |t|
      t.text :counsel
      t.belongs_to :diagnosis, index: true

      t.timestamps null: false
    end
    add_foreign_key :counsels, :diagnoses
  end
end
