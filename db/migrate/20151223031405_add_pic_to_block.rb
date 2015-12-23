class AddPicToBlock < ActiveRecord::Migration
  def change
    add_column :blocks, :pic, :string
  end
end
