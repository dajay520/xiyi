class Partner < ActiveRecord::Base
  has_many :users
  has_many :periods
end
