Rails.application.routes.draw do
  resources :projects
  get 'home/testers'
  get 'home/index'
  get 'home/company_additional'
  get 'home/project_start'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  post 'tester/waitlist'
  post 'company/waitlist'
end
