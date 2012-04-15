class User < ActiveRecord::Base
  belongs_to :tea
  belongs_to :teaType
end
