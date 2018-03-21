class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :hour
      t.integer :prepaid

      t.timestamps
    end
  end
end
