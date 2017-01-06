class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :test_id
      t.text :content

      t.timestamps
    end
  end
end
