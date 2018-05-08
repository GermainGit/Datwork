class AddUserToDevoir < ActiveRecord::Migration[5.1]
  def change
    add_reference :devoirs, :user, foreign_key: true
  end
end
