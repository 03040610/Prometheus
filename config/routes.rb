Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations',
    sessions: 'teachers/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "teachers#index"
  resources :teachers do
    collection do
      get 'search'
    end
  end
end