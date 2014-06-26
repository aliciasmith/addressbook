class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :dist_type
      t.string :email
      t.string :phone
      t.string :phone_type

      t.timestamps
    end
  end
end
