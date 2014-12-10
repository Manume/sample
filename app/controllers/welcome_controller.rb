class WelcomeController < ApplicationController
  def index
  	@contact = Contact.new
  	@portfolios = Portfolio.all
  	@careers = Career.all
  end
end
