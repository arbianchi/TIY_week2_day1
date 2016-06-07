class User < ActiveRecord::Base
 # validates_presence_of :first_name, :last_name  
 # validates_length_of :password, minimum: 4
 # validates_uniqueness_of :username

  has_many :purchases
end
