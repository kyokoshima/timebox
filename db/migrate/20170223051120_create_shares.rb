class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.string :mailaddress

      t.timestamps
    end
  end
end
