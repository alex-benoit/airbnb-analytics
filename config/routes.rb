# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'dashboard', to: 'pages#dashboard'

  resources :passwords, controller: 'passwords', only: %i[create new]
  resource :session, controller: 'sessions', only: [:create]
  resources :users, controller: 'users', only: [:create] do
    resource :password, controller: 'passwords', only: %i[create edit update]
  end

  resources :flats

  get 'sign_in', to: 'sessions#new', as: 'sign_in'
  delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  get 'sign_up', to: 'users#new', as: 'sign_up'
end

# build funnels and conversion ?
