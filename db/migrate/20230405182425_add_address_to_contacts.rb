class AddAddressToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :lat, :decimal, :precision=>10, :scale=>6
    add_column :contacts, :lng, :decimal, :precision=>10, :scale=>6
  end
end
