class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.integer :capacity
      t.boolean :roofed
      t.string :ground

      t.timestamps
    end
  end
end
