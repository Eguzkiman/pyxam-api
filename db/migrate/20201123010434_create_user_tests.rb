class CreateUserTests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tests do |t|
      t.integer :test_id
      t.integer :user_id
      t.float :score

      t.timestamps
    end
  end
end
