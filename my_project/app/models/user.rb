class User < ActiveRecord::Base
    has_many :contacts
    has_many :phones, through: :contacts
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_numericality_of :age, 
    greater_than_or_equal_to: 0
end
