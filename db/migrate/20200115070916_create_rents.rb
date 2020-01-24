class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :farmer
      t.references :farmer_instrument
      t.float :total_charges
      t.datetime :rented_from_date
      t.datetime :rented_till_date

      t.timestamps

    end
  end
end
