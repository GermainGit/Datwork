class Ok < ActiveRecord::Migration[5.1]
  def change
    add_reference :matieres, :devoir, foreign_key: true
  end
end

