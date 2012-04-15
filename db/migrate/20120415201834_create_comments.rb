class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :cmt
      t.belongs_to :tea
      t.belongs_to :user

      t.timestamps
    end
    add_index :comments, :tea_id
    add_index :comments, :user_id
  end
end
