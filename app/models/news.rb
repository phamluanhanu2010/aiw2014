class News < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
