class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps   #crea 2 colonne created_at e update_at
    end
  end
end
