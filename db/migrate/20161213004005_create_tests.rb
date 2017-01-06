class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :test, [:user_id, :created_at]

  end
end
