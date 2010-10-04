class AddPositionToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :position, :integer
    remove_column :pages, :lft
    remove_column :pages, :rgt
  end

  def self.down
    remove_column :pages, :position
    raise IrreversibleMigration 
  end
end
