class Author < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
