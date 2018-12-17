class NewItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :url, :description, :url, :url_to_image, :author
end
