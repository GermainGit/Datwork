class AddRefToMatieres < ActiveRecord::Migration[5.1]
  def change
    add_reference :matieres, :devoirs, foreign_key: true
  end
end
