class RenameTateToDate < ActiveRecord::Migration[5.0]
  def change
  	rename_column :capsules, :dig_tate, :dig_date
  end
end
