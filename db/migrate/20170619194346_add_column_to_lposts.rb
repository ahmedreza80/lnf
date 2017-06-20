class AddColumnToLposts < ActiveRecord::Migration[5.0]
  def change
    add_column :lposts, :cover, :string
  end
end
