class CreateLposts < ActiveRecord::Migration[5.0]
  def change
    create_table :lposts do |t|
      t.string :tittle
      t.text :description
      t.string :location
      t.string :Contact

      t.timestamps
    end
  end
end
