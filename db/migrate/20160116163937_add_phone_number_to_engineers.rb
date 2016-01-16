class AddPhoneNumberToEngineers < ActiveRecord::Migration
  def change
    add_column :engineers, :phone_number, :string
  end
end
