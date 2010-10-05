class AddDataToDbFiles < ActiveRecord::Migration
  def self.up
    add_column :db_files, :data, :binary
  end

  def self.down
    remove_column :db_files, :data
  end
end
