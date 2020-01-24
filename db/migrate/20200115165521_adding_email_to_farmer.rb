class AddingEmailToFarmer < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :email_id, :string
  end
end
