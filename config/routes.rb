Rails.application.routes.draw do
  devise_for :users

  # devise_scope :user do
    # Redirects signing out users back to sign-in
    # root to: "devise/sessions#new"
    # root to: 'splash_screen#index'
  # end

  # devise_for :users

  resources :users

  resources :budget_categories do
    resources :expenses
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'splash_screen#index'
end
