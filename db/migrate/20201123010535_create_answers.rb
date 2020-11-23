class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :code
      t.integer :user_test_id
      t.integer :question_id

      t.timestamps
    end
  end
end
