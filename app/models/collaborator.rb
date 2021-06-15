class Collaborator < ApplicationRecord

    validates_presence_of :name, :birthday, :personal_phone_number
    validates :postal_code, length: { minimum: 10 }, presence: true
    validates :cpf, presence: true, uniqueness: true
    validates_presence_of :city, :state, :address, :neighborhood, :salary, :inss

    belongs_to :user
end
