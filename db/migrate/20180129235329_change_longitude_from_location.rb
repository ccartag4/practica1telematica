class ChangeLongitudeFromLocation < ActiveRecord::Migration[5.1]
  def change
  	change_column :locations, :longitude, :string
  end
end
