class ColorRefToMatiere < ActiveRecord::Migration[5.1]
  def change
     add_reference :matieres, :color, foreign_key: true
  end
end
