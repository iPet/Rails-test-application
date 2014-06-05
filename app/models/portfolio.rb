class Portfolio < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
