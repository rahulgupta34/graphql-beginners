module Types
  class StudentAttributes < Types::BaseInputObject
    argument :name, String, required: true
    argument :age, String, required: true
    argument :email, String, required: true
  end
end

