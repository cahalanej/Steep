class Tea < ActiveRecord::Base


  def thumbnail
    "http://api.freebase.com/api/trans/image_thumb" + image_id
  end
  
  
  belongs_to :teaType
  has_many :likes
end