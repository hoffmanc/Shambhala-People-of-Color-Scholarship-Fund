class AddAttachmentToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :filename, :string
    add_column :pages, :content_type, :string
    add_column :pages, :size, :integer
  end

  def self.down
    remove_column :pages, :size
    remove_column :pages, :content_type
    remove_column :pages, :filename
  end
end
