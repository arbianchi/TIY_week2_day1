class Order < ActiveRecord::Base
  belongs_to :user
  has_many :item
  has_one :purchase
end
