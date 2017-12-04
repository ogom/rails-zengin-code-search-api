Rails.application.routes.draw do
  namespace :search do
    resources :banks, param: :code, only: [:index] do
      resources :branches, only: [:index]
    end
  end

  resources :banks, param: :code do
    resources :branches, param: :code
  end
end
