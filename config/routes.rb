Rails.application.routes.draw do
  devise_for :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "teacher#index"
  resources :teachers do
    collection do
      get 'search'
    end
  end
end