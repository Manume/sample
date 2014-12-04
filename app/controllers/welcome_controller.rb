class WelcomeController < ApplicationController
  def index
  	@contact = Contact.new
  	@portfolios = Portfolio.all
  end
end
