Rails.application.routes.draw do
  resources :banks, param: :code do
    resources :branches, param: :code
  end
end
