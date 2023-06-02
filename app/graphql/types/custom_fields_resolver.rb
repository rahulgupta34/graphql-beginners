module Types
    module CustomFieldsResolver
      def self.included(child_class)
        child_class.field(:get_items, [Types::ItemType], null: false)
        child_class.field(:find_item, Types::ItemType, null: false) do
            argument :id, Integer, required: true
        end
      end

      def get_items
            Item.all.order(:created_at).limit(2)
      end

      def find_item(id:)
            Item.find(id)
      end

    end
    
end
