Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do 
    resources :guests
    resources :rounds 
    resources :cards, only: %i[create show index] do
      get :avatar, on: :member
    end
  end
 
  post'/api/guests', to: 'guest#create' 
end
