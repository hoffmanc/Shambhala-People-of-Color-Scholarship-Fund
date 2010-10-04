class AddCategoryToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :category, :string
    remove_column :pages, :parent_id
  end

  def self.down
    remove_column :pages, :category
    add_column :pages, :parent_id, :string
    raise IrreversibleMigration 
  end
end
