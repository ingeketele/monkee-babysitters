class CreateBabysitters < ActiveRecord::Migration[5.2]
  def change
    create_table :babysitters do |t|
      t.references :user, foreign_key: true
      t.text :biography
      t.date :birthdate
      t.integer :price_per_hour

      t.timestamps
    end
  end
end
