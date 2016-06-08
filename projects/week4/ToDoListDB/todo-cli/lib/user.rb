class User < ActiveRecord::Base
   has_many :address
  has_many :purchases

  def find_id_by_name first, last
   id = User.where(first_name: first, last_name: last).first.id
   return id
  end

end
