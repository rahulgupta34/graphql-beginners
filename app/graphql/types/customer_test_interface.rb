module Types 
    class CustomerTestInterface < Types::BaseObject
        implements Types::CustomerInterface
        field :name, String, null: false
    end
end

