class AddGmsTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gms_token, :string
  end
end
