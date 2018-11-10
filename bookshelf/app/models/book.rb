class Book < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :author  
end
