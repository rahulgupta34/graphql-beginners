module Mutations
  class Studentcreate < BaseMutation
    
    field :student, Types::StudentType
    field :errors, [String]
    argument :attributes, Types::StudentAttributes

   
    def resolve(attributes:)
     
     student = Student.new(attributes.to_h)
     if student.save
        { student: student, errors: [] }
     else
        { student: nil, errors: student.errors.full_messages }
     end

    end
  end
end
