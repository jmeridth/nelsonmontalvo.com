class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :content
      t.string :website
      t.string :name
      t.string :date
      t.integer :sort_order
    end
  end

  def self.down
    drop_table :comments
  end
end
