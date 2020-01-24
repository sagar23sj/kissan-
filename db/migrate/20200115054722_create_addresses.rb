class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :farmer
      t.string :line1
      t.string :line2
      t.string :city
      t.string :pincode
      

      t.timestamps
    end
  end
end
