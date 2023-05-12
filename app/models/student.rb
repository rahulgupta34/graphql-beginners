class Student < ApplicationRecord
    validates :name, presence: true, length: { minimum:3, maximum:7 }
    validates :email, presence: true
    validates :age, presence: true
end
