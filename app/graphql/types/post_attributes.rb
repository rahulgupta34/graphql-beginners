module Types

    class PostAttributes < Types::BaseInputObject
        argument :title, String, required: true
        argument :body, String, required: true
        argument :category_id, Types::MediaCategory, required: true
    end

end

