class TesterController < ApplicationController
  def waitlist

    # fetch the existing row by email, or create one if none exists
    tester = WaitlistedTester.
        where(email: params[:email]).
        first_or_create(name: params[:name])

    if tester
      flash[:notice] = "Thank you for your interest!"
    else
      flash[:notice] = "Oops! Something went wrong. Please try again soon."
    end

    redirect_to home_testers_path
  end
end