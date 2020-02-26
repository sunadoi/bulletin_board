class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.text         :content, null: false
      t.bigint       :user_id, foreign_key: true
      t.bigint       :topic_id, foreign_key: true
      t.timestamps
    end
  end
end
