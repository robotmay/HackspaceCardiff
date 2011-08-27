class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :from_email
      t.string :subject
      t.text :body
    end
    add_index :messages, :from_email
  end

  def self.down
    drop_table :messages
  end
end
