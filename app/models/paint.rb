class Paint < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
