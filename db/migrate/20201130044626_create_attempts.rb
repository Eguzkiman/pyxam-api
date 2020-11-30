class CreateAttempts < ActiveRecord::Migration[6.0]
  def change
    create_table :attempts do |t|
      t.string :username
      t.text :a1
      t.text :a2
      t.text :a3
      t.text :a4
      t.text :a5

      t.timestamps
    end
  end
end
