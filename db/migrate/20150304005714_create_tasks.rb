class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :outcome, null: false, default: 0
      t.string :label, null: false
      t.references :user, index: true, null: false
      t.integer :priority, null: false, default: 1

      t.timestamps null: false

      t.index :outcome
      t.index :created_at
    end

    add_foreign_key :tasks, :users
  end
end
