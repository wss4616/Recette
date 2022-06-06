Rails.application.routes.draw do
  devise_for :users
  get 'recipe/index'
  root to: "recipe#index"
end
