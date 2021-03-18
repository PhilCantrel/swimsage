Rails.application.routes.draw do
  resources :instructor_profiles
  resources :students
  resources :user_profiles
  devise_for :instructors, path: "instructors", controllers: { sessions: "instructors/sessions", confirmations: "instructors/confirmations", passwords: "instructors/passwords", registrations: "instructors/registrations", unlocks: "instructors/unlocks"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", confirmations: "users/confirmations", passwords: "users/passwords", registrations: "users/registrations", unlocks: "users/unlocks"}
  root 'home#page'
  patch '/timeslot/available', to: 'timeslot#mark_available', as: 'mark_available'
  patch '/timeslot/unavailable', to: 'timeslot#mark_unavailable', as: 'mark_unavailable'
end
