class AddUserModel < ActiveRecord::Migration[5.2]
  def change
create_table :users do |t|
	t.string :first_name
	t.string :last_name
	t.string :email
	t.string :phone
	t.string :password
	t.string :authentication_taken
	t.date :dob
		end
  end
end
