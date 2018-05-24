class AddTitleToDevoirs < ActiveRecord::Migration[5.1]
  def change
    add_column :devoirs, :title, :string
    add_column :devoirs, :date, :date
  end
end
