class AddFieldsToLines < ActiveRecord::Migration[7.1]
  def change
    add_column :lines, :sequence, :integer
    add_column :lines, :spacing, :integer
  end
end
