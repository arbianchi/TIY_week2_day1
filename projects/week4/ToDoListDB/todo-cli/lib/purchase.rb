class Purchase < ActiveRecord::Base
#  validates_presence_of :title, :user_id
#  validates_uniqueness_of :title, scope: :user_id

  belongs_to :item
  belongs_to :user

  def purchase_item name, due_date: nil
    items.create! name: name, due_date: due_date
  end
end
