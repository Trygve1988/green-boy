class CreateDailyChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_challenges do |t|
      t.date :date
      t.integer :total_score, default: 0
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
