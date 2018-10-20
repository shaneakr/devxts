class TesterController < ApplicationController
  def waitlist
    WaitlistedTester.create name: params[:name], email: params[:email]

    redirect_to root_path
  end
end