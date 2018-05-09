class CreateMatieres < ActiveRecord::Migration[5.1]
  def change
    create_table :matieres do |t|

      t.string :nom
      t.string :col_from
      t.string :col_to

      t.timestamps
    end
  end
end
