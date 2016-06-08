class Address < ActiveRecord::Base
  belongs_to :user

  def find_user_by_address
    u = Address.where(street: "7153 Predovic Falls").first.user
    return u
  end
end
