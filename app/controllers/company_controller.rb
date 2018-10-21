class CompanyController < ApplicationController
  def waitlist
    company = Company.create name: params[:name], email: params[:email]

    if company
      flash[:notice] = "Thank you for your interest!"
    else
      flash[:notice] = "Oops! Something went wrong. Please try again soon."
    end

    redirect_to root_path
  end
end