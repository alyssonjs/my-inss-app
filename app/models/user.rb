class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_presence_of :name, presence: true
  validates_presence_of :password

  has_many :collaborators
end
