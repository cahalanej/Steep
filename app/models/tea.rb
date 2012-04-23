class Tea < ActiveRecord::Base


  def thumbnail
    "http://api.freebase.com/api/trans/image_thumb" + image_id
  end
  
  def self.search(search)
  if search
    find(:all, :conditions => ['name || region LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
  
end
  belongs_to :tea_type
  has_many :likes
end