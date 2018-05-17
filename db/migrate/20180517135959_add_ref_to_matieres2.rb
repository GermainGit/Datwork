class AddRefToMatieres2 < ActiveRecord::Migration[5.1]
  def change
    add_reference :matieres, :user, foreign_key: true
  end
end
