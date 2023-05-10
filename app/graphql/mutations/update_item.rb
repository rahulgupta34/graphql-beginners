module Mutations
  class UpdateItem < BaseMutation
    # TODO: define return fields
    # field :item, Types::ItemType, null: false
    # field :errors, [String]
    type Types::ItemType

    # TODO: define arguments
    # argument :name, String, required: true
    argument :id, ID, required: true
    argument :title, String, required: true
    argument :description, String, required: true
    argument :image_url, String, required: true
    argument :artist_id, ID, required: true

    # TODO: define resolve method
    def resolve(id:,title:,description:,image_url:, artist_id:)
      Item.find(id).update!(title: title, description: description, image_url: image_url, artist_id: artist_id)
    end
  end
end
