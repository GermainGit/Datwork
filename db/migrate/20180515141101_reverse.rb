class Reverse < ActiveRecord::Migration[5.1]
  def change
    remove_column :matieres, :color, :string
  end
end
