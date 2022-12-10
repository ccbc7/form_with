Rails.application.routes.draw do
  get 'r/index'
  root to: "r#new"

  resources :r do
    member do
      post 'confirm'
    end
  end
end
