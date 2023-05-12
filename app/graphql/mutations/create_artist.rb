module Mutations
  class CreateArtist < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :first_name, String
    argument :last_name, String 
    argument :email, String

    type Types::ArtistType

    # TODO: define resolve method
    def resolve(first_name:,last_name:,email:)
        Artist.create(first_name: first_name, last_name: last_name, email: email)
    end
  end
end
