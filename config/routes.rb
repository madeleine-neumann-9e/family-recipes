Rails.application.routes.draw do
  root to: 'landingpage#index'

  namespace :backyard do
    root to: 'recipes#index'
  end
end
