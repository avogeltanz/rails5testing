Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts

  scope '/prototypes' do
    resources :test_models, only: [:show]
  end
end
