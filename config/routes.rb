Rails.application.routes.draw do
  resources :prospectts
  devise_for :users
  root to: 'prospectts#new'

    resources :prospects, only: [:create, :index, :destroy, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
