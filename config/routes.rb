Rails.application.routes.draw do
  get 'recipe/index'
  get 'recipe/new'
  get 'recipe/create'
  get 'recipe/edit'
  get 'recipe/update'
  root to: 'landingpage#index'

  namespace :backyard do
    root to: 'recipes#index'
    resources :ingredients
    resources :recipes
  end
end
