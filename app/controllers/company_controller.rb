class CompanyController < ApplicationController
  def waitlist
    Company.create name: params[:name], email: params[:email]

    redirect_to root_path
  end
end