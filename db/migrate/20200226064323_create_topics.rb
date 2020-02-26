class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string       :title, null: false
      t.bigint       :user_id, foreign_key: true
      t.timestamps
    end
  end
end
