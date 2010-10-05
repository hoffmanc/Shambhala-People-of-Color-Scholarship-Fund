class CreateDbFilesTable < ActiveRecord::Migration
  def self.up
    create_table "db_files" do |t|
      t.data :binary,
      t.timestamps
    end
  end

  def self.down
    drop_table "db_files"
  end
end
