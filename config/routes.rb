Rails.application.routes.draw do
  root "anagrams#index"

  resources :words, only: [:new, :create]
end
