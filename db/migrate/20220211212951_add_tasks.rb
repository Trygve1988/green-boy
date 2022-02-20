class AddTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :logo, default: "light"
      t.integer :points, default: 10
      t.timestamps
    end
  end
end
