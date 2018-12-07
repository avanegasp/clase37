Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    resources :comments
  end

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end

  namespace :api do
    namespace :v1 do
      resources :post do
        resources :comments
      end
    end
  end


end
