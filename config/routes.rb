Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api', constraints: { format: 'json' } do
    namespace 'v1' do
      resources :posts, only: [:index, :show, :create, :update, :destroy]
        resources :comments, only: [:show, :create] do
        end
      resources :users, only: [:index, :show, :create, :update]
    end
  end
end