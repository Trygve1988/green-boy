class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :text

      t.timestamps
    end
    drop_table :searches
  end
end
