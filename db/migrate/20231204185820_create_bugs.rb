class CreateBugs < ActiveRecord::Migration[7.1]
  def change
    create_table :bugs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :title
      t.string :deadline
      t.string :type
      t.string :status

      t.timestamps
    end
    add_index :bugs, :title, unique: true

  end
end
