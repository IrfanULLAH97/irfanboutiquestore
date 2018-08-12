# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  item_no    :integer
#

class Item < ApplicationRecord
	#Associations
	has_many :order_items
end
