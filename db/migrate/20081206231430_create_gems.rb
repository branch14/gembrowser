class CreateGems < ActiveRecord::Migration
  def self.up
    create_table :gems do |t|
      t.string :name
      t.string :version

      t.timestamps
    end
  end

  def self.down
    drop_table :gems
  end
end
