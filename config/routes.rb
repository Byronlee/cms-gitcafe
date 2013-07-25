Lbyronlee::Application.routes.draw do

  devise_for :users

  resources :posts do
    resources :comments
    collection do
      get 'hot'
    end
  end
  resources :supports 


  root 'posts#index'
  match '/:anything', to: "application_with_exceptions#routing_error", as: :error, via: :get, :constraints => {:anything => /.*/}

end
