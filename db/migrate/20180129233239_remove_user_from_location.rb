class RemoveUserFromLocation < ActiveRecord::Migration[5.1]
  def change
    remove_reference :locations, :User, foreign_key: true
  end
end
