class AddUserRefToBlock < ActiveRecord::Migration
  def change
    add_reference :blocks, :user, index: true, foreign_key: true
  end
end
