class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :phones
  validates_presence_of :name
end
