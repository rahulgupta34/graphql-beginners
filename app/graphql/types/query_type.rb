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

    field :articles, [Types::ArticleType]
    field :find_articles, Types::ArticleType do 
      argument :id, ID, required: true
    end

    def items
      Item.all
    end

    def artists
      Artist.all
    end

    def articles
      Article.all
    end

    def find_articles(id:)
        Article.find(id)
    end

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
