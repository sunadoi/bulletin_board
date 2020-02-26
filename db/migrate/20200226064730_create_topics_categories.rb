class CreateTopicsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :topics_categories do |t|
      t.bigint       :topic_id, foreign_key: true
      t.bigint       :category_id, foreign_key: true
      t.timestamps
    end
  end
end
