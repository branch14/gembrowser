class CreateGemms < ActiveRecord::Migration
  def self.up
    create_table :gemms do |t|
      t.string :name
      t.string :version

      t.timestamps
    end
  end

  def self.down
    drop_table :gemms
  end
end
