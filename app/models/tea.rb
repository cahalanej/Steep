class Tea < ActiveRecord::Base

  def self.import_from_freebase
    ken.all(type: '/food/tea').each do |resource|
    create_from_resource(resource)
  end

  def self.create_from_resource(resource)
    type = resource.attribute('/food/tea/tea_type')
    images = resource.attribute('/common/topic/image')
    if type && images #if there are no images, just ignore
      create(name: resource.name,
      tea_type: type.values.first.name,
      image_id: images.values.first.id)
   end
  end

  def thumbnail
    "http://api.freebase.com/api/trans/image_thumb" + image_id
  end
  
  
  belongs_to :teaType
  has_many :likes
end