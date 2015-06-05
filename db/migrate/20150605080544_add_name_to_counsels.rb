class AddNameToCounsels < ActiveRecord::Migration
  def change
    add_column :counsels, :name, :string
  end
end
