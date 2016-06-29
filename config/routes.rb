LenticularCms::Engine.routes.draw do
  root 'posts#index'
  resources :categories
  resources :posts
  get 'lcms-admin' => 'dashboard#show', as: :dashboard
  get 'lcms-admin/posts' => 'dashboard#posts_index', as: :dashboard_posts
  get 'lcms-admin/categories' => 'dashboard#categories_index', as: :dashboard_categories
end
