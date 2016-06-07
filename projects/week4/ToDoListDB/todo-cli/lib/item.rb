class Item < ActiveRecord::Base
# validates_presence_of :list_id, :name
#  validates_uniqueness_of :name, scope: :list_id
#  validate :due_date_is_in_the_future

  has_many :purchases

  def count_items
    Item.all.count
  end
#  def create_at
    # WARNING: not `done_at = Time.now`
#    self.create! = Time.now
#    save!
#  end

 # def add_tag 
#    tag = Tag.where(name: tag_name).first_or_create!
    # ItemTag.create! item_id: self.id, category_id: tag.id
    # ItemTag.create! item: self, category: tag
#    tags.push tag
#  end
end
