class CreateTrees < ActiveRecord::Migration[7.1]
  def change
    create_table :trees do |t|
      t.boolean :planted
      t.integer :position
      t.references  :type, foreign_key: true
      t.references  :line, foreign_key: true
      t.timestamps
    end
  end
end
