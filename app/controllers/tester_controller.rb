class TesterController < ApplicationController
  def waitlist
    tester = WaitlistedTester.create name: params[:name], email: params[:email]

    if tester
      flash[:notice] = "Thank you for your interest!"
    else
      flash[:warning] = "Oops! Something went wrong. Please try again soon."
    end

    redirect_to home_testers_path
  end
end