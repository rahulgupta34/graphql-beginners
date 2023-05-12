module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :items,
    [Types::ItemType],
    null: false,
    description: "Return all the list of items."

    field :artists,
    [Types::ArtistType],
    null: false,
    description: "Return All the artist."

    field :find_student, Types::StudentType do 
        argument :id, ID, required: true
    end

    field :errors, [String]

    def items
      Item.all
    end

    def artists
      Artist.all
    end

    def find_student(id:)
        @student = Student.find(id)
      rescue ActiveRecord::RecordNotFound => e
         { errors: e.to_s }
    end


  end
end
