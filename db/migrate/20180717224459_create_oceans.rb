class CreateOceans < ActiveRecord::Migration[5.2]
  def change
    create_table :oceans do |t|
      t.string :name
      t.string :temperature

      t.timestamps
    end
  end
end
