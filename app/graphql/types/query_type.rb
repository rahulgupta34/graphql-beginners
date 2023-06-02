module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    include Types::CustomFieldsResolver
    


    # TODO: remove me
    field :test_field, Types::Items, null: false,
      description: "An example field added by the generator"
    
  end
end
