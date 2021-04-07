Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do 
    resources :guests, except: [:index, :destroy ]
    resources :cards, only: [ :new, :create, :show ]
    resources :rounds, except: [:index, :destroy ] 
    resources :dealer, only: [ :new, :create, :show ]
  end

end
