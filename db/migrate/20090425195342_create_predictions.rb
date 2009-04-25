class CreatePredictions < ActiveRecord::Migration
  def self.up
    create_table :predictions do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :predictions
  end
end
