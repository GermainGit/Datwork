class Addref < ActiveRecord::Migration[5.1]
  def change
        add_reference :devoirs, :etat, foreign_key: true
  end
end
