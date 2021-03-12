Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
