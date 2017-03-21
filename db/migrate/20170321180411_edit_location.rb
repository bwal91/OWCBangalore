class EditLocation < ActiveRecord::Migration[5.0]
  def change
  	rename_column :locations, :volunteer, :text 
  	add_column :locations, :owc_contact, :string
  	add_column :locations, :donation_requirments, :text
  end
end
