Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :doctors
  devise_for :clients
  
  resources :doctors

  resources :clients do
    resources :animals
  end

  resources :cities
  resources :appointments

  get 'static_page/team'
  get 'static_page/contact'
  get 'static_page/cgu'
  
  root to: "welcome#index"
end
