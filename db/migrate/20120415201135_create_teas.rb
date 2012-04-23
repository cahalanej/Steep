class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string :name
      t.string :region
      t.string :image_id
      t.belongs_to :tea_type

      t.timestamps
    end
    add_index :teas, :tea_type_id
  end
end