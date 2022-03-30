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

  get 'team',     to: 'static_page#team'
  get 'contact',  to: 'static_page#contact'
  get 'cgu',      to: 'static_page#cgu'
  
  root to: "welcome#index"
end
