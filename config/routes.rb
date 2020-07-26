Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
    resources :articles
   end
  end
  get 'page/index'
  root 'page#index'
  get 'page/show', to: 'page#show' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
