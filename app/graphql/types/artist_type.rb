# frozen_string_literal: true

module Types
  class ArtistType < Types::BaseObject
    implements Types::RecordType

    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :count, Integer


    def full_name 
      [object.first_name, object.last_name].compact.join("")
    end 

    def count
      object.items.count
    end

  end
end
