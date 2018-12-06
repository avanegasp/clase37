Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  get '/ferney', to: "posts#ferney"
end
