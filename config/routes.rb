Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :users , only: %w[index show]
  resources :chats , only: %w[index new show create destroy] do
    resources :messages , only: %w[index create destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
