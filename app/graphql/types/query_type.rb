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

    field :delete_artist, Types::ArtistType do
      argument :id, ID, required: true
    end

    field :delete_item, Types::ItemType do 
      argument :id, ID, required: true
    end

    def items
      Item.all
    end

    def artists
      Artist.all
    end

    def delete_artist(id:)
      @artist = Artist.find(id)
      @artist.destroy
    end

    def delete_item(id:)
      @item = Item.find(id)
      @item.destroy
    end

  end
end
