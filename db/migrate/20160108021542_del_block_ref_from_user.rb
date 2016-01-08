class DelBlockRefFromUser < ActiveRecord::Migration
  def change

    remove_foreign_key :users, :blocks
    remove_index :users, :block_id
    remove_reference :users, :block

  end
end
