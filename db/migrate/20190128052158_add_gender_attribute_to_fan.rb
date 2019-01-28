class AddGenderAttributeToFan < ActiveRecord::Migration[5.1]
  def change
    add_column :fans, :gender, :integer
  end
end
