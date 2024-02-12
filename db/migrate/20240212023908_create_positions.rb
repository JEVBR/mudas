class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.string :code
      t.string :description
      t.timestamps
    end
  end
end
