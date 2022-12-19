Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    # Redirests signing out users back to sign-in
    root to: "devise/sessions#new"
  end

  # devise_for :users

  resources :users do
    resources :budget_categories do
      resources :expenses
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
