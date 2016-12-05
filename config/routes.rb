Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'performances#index'
  namespace :artists do
    root to: 'performances#index'
    resources :performances, only: [:index]
  end
  namespace :bands do
    root to: 'performances#index'
    resources :performances, only: [:index]
  end
  namespace :clowns do
    root to: 'performances#index'
    resources :performances, only: [:index]
  end
  namespace :magicians do
    root to: 'performances#index'
    resources :performances, only: [:index]
  end
end
