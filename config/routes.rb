Rails.application.routes.draw do
  resources :reviews
  get 'reviews/new/:claim_id', to: 'reviews#new', as: 'review_new'
  get 'participations/join/:claim_id', to: 'participations#join', as: 'participation_join'

  get 'participations/', to: 'participations#index'
  delete 'participations/:id', to: 'participations#destroy', as: 'participation'

  resources :claims
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
