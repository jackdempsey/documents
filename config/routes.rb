Documents::Engine.routes.draw do
  resources :documents do
    collection do
      post :search
      get :bulk
    end
  end

  root to: 'dashboard#index'
end
