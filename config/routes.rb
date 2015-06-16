Rails.application.routes.draw do
  get 'participations/', to: 'participations#index'
  delete 'participations/:id', to: 'participations#destroy', as: 'participation'

  resources :claims
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
