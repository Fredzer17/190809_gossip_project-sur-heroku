Rails.application.routes.draw do
  resources :gossips
  resources :user
  resources :city
  resources :sessions, only: [:new, :create, :destroy]
  get '/home', to: 'home#home_page'
  get '/welcome/:first_name', to: 'home#landing_page'
  get '/contact', to: 'home#contact_show'
  get '/team', to: 'home#show_team'
  root to: 'gossips#index' 

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


