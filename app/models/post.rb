class Post < ActiveRecord::Base
  validates :title, :post, presence: true
  belongs_to :user
end
