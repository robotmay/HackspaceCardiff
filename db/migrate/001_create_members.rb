class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
    end
    
    add_index :members, :email
  end

  def self.down
    drop_table :members
  end
end
