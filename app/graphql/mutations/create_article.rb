module Mutations
  class CreateArticle < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    type Types::ArticleType

    # TODO: define arguments
    # argument :name, String, required: true
    argument :arrtibutes, Types::Inputs::ArticleInput
    
    # TODO: define resolve method
    def resolve(arrtibutes:)
      Article.create!(title: arrtibutes.title, author: arrtibutes.author)
    end
  end
end
