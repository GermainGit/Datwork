class AddRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :matieres, foreign_key: true
    add_reference :users, :devoirs, foreign_key: true
  end
end
