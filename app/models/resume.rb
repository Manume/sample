class Resume < ActiveRecord::Base
	validates :full_name,:email_address,:upload_cv,presence: :true
	mount_uploader :upload_cv,UploadCvUploader
end
