Rails.application.routes.draw do
  get 'recipe/index'
  root to: "recipe#index"
end
