class User < ActiveRecord::Base
  belongs_to :block
  has_secure_password
end
