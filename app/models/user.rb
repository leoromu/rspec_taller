class User < ActiveRecord::Base
  validates: username, :presece true
end
