class Purchase < ActiveRecord::Base
#  validates_presence_of :title, :user_id
#  validates_uniqueness_of :title, scope: :user_id

  belongs_to :item
  belongs_to :user
  def purchases_by_item_id itemid
    p = Purchase.where(item_id: itemid).count
    return p
  end
  
end
