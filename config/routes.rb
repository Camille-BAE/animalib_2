Rails.application.routes.draw do
  get 'static_page/team'
  get 'static_page/contact'
  get 'static_page/cgu'
  # devise_for :users
  devise_for :doctors
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
end
