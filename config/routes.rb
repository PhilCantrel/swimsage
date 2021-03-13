Rails.application.routes.draw do
  resources :user_profiles
  devise_for :instructors, path: "instructors", controllers: { sessions: "instructors/sessions", confirmations: "instructors/confirmations", passwords: "instructors/passwords", registrations: "instructors/registrations", unlocks: "instructors/unlocks"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", confirmations: "users/confirmations", passwords: "users/passwords", registrations: "users/registrations", unlocks: "users/unlocks"}
  root 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
