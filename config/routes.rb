# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'up' => 'rails/health#show', as: :rails_health_check
  # Ways to define a route
  # get 'home/index'
  # get '/home' => 'home#index'
  # defining a root page
  root 'home#index'

  resources :employees
  resources :documents

  # public pages routes
  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'terms-and-conditions' => 'pages#terms_and_conditions'
end
