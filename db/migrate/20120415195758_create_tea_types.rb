class CreateTeaTypes < ActiveRecord::Migration
  def change
    create_table :tea_types do |t|
      t.string :name
      t.string :image
      t.text :repTea

      t.timestamps
    end
  end
end
