class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :lastname
      t.integer :age
      t.integer :celphone
      t.string :mail

      t.timestamps
    end
  end
end
