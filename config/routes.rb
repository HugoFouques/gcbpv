Rails.application.routes.draw do
  get "archives", to: "archives#index"
  resources :posts, path: :actualites, only: [:index, :show]
  namespace :ecole do
    resources :instruments, path: :cours, only: [:index, :show]
    resources :projects, path: :projets, only: [:index, :show]
    resources :teachers, path: :professeurs, only: [:index, :show]
    resources :trainings, path: "rendez-vous", only: [:index, :show]
    resources :training_sessions, path: "rendez-vous/seances", only: [:show]
    resources :workshops, path: :ateliers, only: [:index, :show]
    get "enfance", to: "youth#index", as: :youth
    get "adhesion", to: "membership#index", as: :membership
  end
  get "ecole", to: "ecole#index"
  devise_for :users
  namespace :admin do
    resources :subscriptions
    resources :students
    resources :payors
    resources :workshops
    resources :trainings
    resources :training_sessions
    resources :projects
    resources :instruments
    resources :teachers
    resources :slots
    resources :cities
    resources :plans
    resources :seasons
    resources :events
    resources :posts
    resources :categories
    resources :configurations, only: [:index, :show, :edit, :update]
    
    root to: "cities#index"
  end
  get "", to: "website#index", as: "/"
  namespace :secretariat do
    resources :subscriptions
    resources :workshops
    resources :students
    resources :courses
    resources :slots
    resources :teachers
    resources :cities
    resources :payors
    resources :instruments
    get "", to: "secretariat#index", as: "/"
  end  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :events, path: :evenements, only: [:index, :show]

end
