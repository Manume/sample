class Portfolio < ActiveRecord::Base
	mount_uploader :portfolio_image,PortfolioImageUploader
end
