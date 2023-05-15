module Mutations
  class CreateCategory < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :category, Types::CategoryType
    field :errors, [String]

    # TODO: define arguments
    argument :category_name, Types::MediaCategory, required: true

    # TODO: define resolve method
    def resolve(category_name:)
      category = Category.new(name: category_name)
      if category.save
          { category: category, errors: [] }
      else
          { category: nil, errors: category.errors.full_messages }
      end

    end
  end
end
