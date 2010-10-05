class AddDbFileIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :db_file_id, :integer
  end

  def self.down
    remove_column :pages, :db_file_id
  end
end
