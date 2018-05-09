class UpdateMatieres < ActiveRecord::Migration[5.1]
  def change
      remove_column :matieres, :col_from
      remove_column :matieres, :col_to

  end
end
