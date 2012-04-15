class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.string :region
      t.integer :likes
      t.belongs_to :teaType

      t.timestamps
    end
    add_index :teas, :teaType_id
  end
end
