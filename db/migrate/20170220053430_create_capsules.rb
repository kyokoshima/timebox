class CreateCapsules < ActiveRecord::Migration[5.0]
  def change
    create_table :capsules do |t|
      t.text :message
      t.timestamp :dig_tate

      t.timestamps
    end
  end
end
