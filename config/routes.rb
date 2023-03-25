Rails.application.routes.draw do
  devise_for :users
  root to: 'weights#index'
  resources :weights do
    resources :rankings
  end
  get 'weights/ranking/:category_id', to: 'weights#ranking', as: 'ranking'
end
