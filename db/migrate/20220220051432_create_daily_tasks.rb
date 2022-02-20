class CreateDailyTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_tasks do |t|
      t.boolean :complete, default: false
      t.belongs_to :daily_challenge, null: false, foreign_key: true
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
