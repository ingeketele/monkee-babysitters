class AddCoordinatesToBabysitters < ActiveRecord::Migration[5.2]
  def change
    add_column :babysitters, :latitude, :float
    add_column :babysitters, :longitude, :float
  end
end
