module Mutations
  class UpdateArticle < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :article, Types::ArticleType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    
    argument :attributes, Types::ArticleAttributes

    # TODO: define resolve method
    def resolve(attributes:)
      # binding.pry
      article = Article.find(attributes[:id])
      if article.update(title: attributes[:title], author: attributes[:author])
          { article: article }
      else
          { article: nil }
      end

    end

  end
end
