	class AddCapsuleIdToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :capsule_id, :integer
  end
end
