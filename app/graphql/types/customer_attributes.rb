module Types

    class CustomerAttributes < Types::BaseInputObject
        argument :name, String, required: true
        argument :age, String, required: true
    end
    
end
