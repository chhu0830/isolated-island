Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "zine#index"
  resources :zine
  resources :authors, :only => [:new, :create]
  resources :articles
end
