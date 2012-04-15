class Comment < ActiveRecord::Base
  belongs_to :tea
  belongs_to :user
end
