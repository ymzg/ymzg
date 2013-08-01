class User < ActiveRecord::Base
  attr_accessible :username, :password, :is_admin
end
