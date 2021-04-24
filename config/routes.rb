Rails.application.routes.draw do
  resources :movies do
    collection do
      get :post2000
      #movies/post2000
    end
    member do
      get :producer
    end
    resources :reviews, only: [:new,:create]
  end
  #we dont need the movie to destroy the review
  resources :reviews, only: [:destroy]
end
