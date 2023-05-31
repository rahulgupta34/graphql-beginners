module Types
    module RecordType
        include Types::BaseInterface
        field :id, ID, null: false
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
end
