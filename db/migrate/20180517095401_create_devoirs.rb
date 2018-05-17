class CreateDevoirs < ActiveRecord::Migration[5.1]
  def change
    create_table :devoirs do |t|
      t.references :matiere, foreign_key: true
      t.text :content
      t.string :etat

      t.timestamps
    end
  end
end
