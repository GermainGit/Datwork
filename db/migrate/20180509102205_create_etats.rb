class CreateEtats < ActiveRecord::Migration[5.1]
  def change
    create_table :etats do |t|
      t.string :nom
    end
  end
end
