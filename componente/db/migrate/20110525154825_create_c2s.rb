class CreateC2s < ActiveRecord::Migration
  def self.up
    create_table :c2s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :c2s
  end
end
