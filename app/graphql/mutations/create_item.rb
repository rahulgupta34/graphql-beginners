module Mutations
  class CreateItem < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    
    # TODO: define arguments
    argument :title, String, required: true
    argument :description, String, required: true
    argument :image_url, String, required: true
    argument :artist_id, Integer, required: true
    
    type Types::ItemType

    # TODO: define resolve method
    def resolve(title:,description:,image_url:,artist_id:)
      Item.create!(title: title,description: description, image_url: image_url, artist_id: artist_id)
    end

  end
end
