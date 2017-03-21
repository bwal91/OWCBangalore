class FixVolunteer < ActiveRecord::Migration[5.0]
  def change
  	remove_column :locations, :text
  	add_column :locations, :volunteer, :text
  end
end
