class CreateHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :histories do |t|
      t.text :body
      t.datetime :date
      t.references  :tree, foreign_key: true
      t.references  :between, foreign_key: true
      t.timestamps
    end
  end
end
