Rails.application.routes.draw do
  get 'home/testers'
  get 'home/index'
  get 'home/company_additional'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  post 'tester/waitlist'
  post 'company/waitlist'
end
