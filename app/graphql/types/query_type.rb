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

    def items
      Item.all
    end

    def artists
      Artist.all
    end


    field :customers, [Types::CustomerTestInterface], null: false

    def customers
        Customer.all.order(id: :desc)
    end
    

  end
end
