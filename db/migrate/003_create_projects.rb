class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :member_id
      t.string :title
      t.text :description
    end
    add_index :projects, :member_id
  end

  def self.down
    drop_table :projects
  end
end
