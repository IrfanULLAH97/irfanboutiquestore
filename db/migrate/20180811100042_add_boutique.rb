class AddBoutique < ActiveRecord::Migration[5.2]
  def change
  	create_table :items do |t|
	t.string :first_name
	t.integer :item_no
	end

	create_table :orders do |t|
	t.integer :user_id,references: :users
	t.date :date
	t.string :comments
	t.float :sub_total
	t.float :tax
	t.timestamps
		end

	create_table :order_items do |t|
	t.integer :oder_id,references: :orders
	t.integer :item_id,references: :items
	t.integer :quantity
	t.timestamps
		end
  end
end
