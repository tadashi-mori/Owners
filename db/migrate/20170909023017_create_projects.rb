class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :title
      t.text :producing_area
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
