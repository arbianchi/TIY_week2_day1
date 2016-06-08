class Purchase < ActiveRecord::Base
#  validates_presence_of :title, :user_id
#  validates_uniqueness_of :title, scope: :user_id

  belongs_to :item
  belongs_to :user
  def purchases_by_item_id itemid
    p = Purchase.where(item_id: itemid).count
    return p
  end
  def cost_of_total_purchases id
    p = Purchase.all.select {|p| p.user_id == id}
    total = p.map {|x| (x.item.price.to_f) *(x.quantity)}.reduce(:+)
    return total
  end
  
end
