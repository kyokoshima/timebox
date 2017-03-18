class AddTitleAndMailAddressToCapsule < ActiveRecord::Migration[5.0]
  def change
    add_column :capsules, :title, :string
    add_column :capsules, :mail_address, :string
  end
end
