class AddColorToMatieres < ActiveRecord::Migration[5.1]
  def change
    add_column :matieres, :color, :string
  end
end
