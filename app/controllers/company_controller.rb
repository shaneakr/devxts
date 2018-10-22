class CompanyController < ApplicationController
  def waitlist
    # fetch the existing row by email, or create one if none exists
    company = Company.
        where(email: params[:email]).
        first_or_create(name: params[:name])

    if company
      flash[:notice] = "Thank you for your interest!"
    else
      flash[:notice] = "Oops! Something went wrong. Please try again soon."
    end

    redirect_to root_path
  end
end