class AddCountryToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :country, :string
  end
end
