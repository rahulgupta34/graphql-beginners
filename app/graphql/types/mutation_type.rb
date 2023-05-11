module Types
  class MutationType < Types::BaseObject
    field :update_article, mutation: Mutations::UpdateArticle
    field :create_article, mutation: Mutations::CreateArticle
    
  end
end
