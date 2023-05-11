module Types
    module Inputs
      class ArticleInput < Types::BaseInputObject
        argument :title, String
        argument :author, String 
      end
    end 
end
