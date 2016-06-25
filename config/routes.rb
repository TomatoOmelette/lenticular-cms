LenticularCms::Engine.routes.draw do
  resources :categories
  resources :posts
  get 'lcms-admin' => 'dashboard#show', as: :dashboard
end
