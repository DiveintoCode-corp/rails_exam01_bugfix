Rails.application.routes.draw do
  # ErrorCause: No route matches [GET] "/blogs"
  # FixReason: Change URI Pattern blog to blogs
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end
end
