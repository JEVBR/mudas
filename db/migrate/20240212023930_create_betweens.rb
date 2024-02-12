class CreateBetweens < ActiveRecord::Migration[7.1]
  def change
    create_table :betweens do |t|
      t.references  :tree, foreign_key: true
      t.references  :position, foreign_key: true
      t.references  :type, foreign_key: true
      t.timestamps
    end
  end
end
