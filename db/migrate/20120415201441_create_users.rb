class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :image
      t.text :description
      t.belongs_to :tea
      t.belongs_to :teaType

      t.timestamps
    end
    add_index :users, :tea_id
    add_index :users, :teaType_id
  end
end
