class CreateColor < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :nom
    end
  end
end
