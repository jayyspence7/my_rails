class User
  include Mongoid::Document

  has_and_belongs_to_many :courses

  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :role, type: String, default: "student"
  validates_presence_of :email
end
