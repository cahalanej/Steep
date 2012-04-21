class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.belongs_to :user
      t.belongs_to :tea

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :tea_id
  end
end
