module Mutations
  class CreatePost < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
      type Types::PostType
    # TODO: define arguments
    # argument :name, String, required: true
    argument :attributes, Types::PostAttributes

    # TODO: define resolve method
    def resolve(attributes:)
      Post.create(attributes.to_h)
    end
  end
end
