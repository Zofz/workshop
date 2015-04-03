Rails.application.routes.draw do

  devise_for :users, path: :anvandare, controllers: {
                       sessions: 'users/sessions',
                       registrations: 'users/registrations'
                   }

  # Scope to change urls to swedish
  scope path_names: {new: 'ny', edit: 'redigera'} do
    resources :addresses, path: :adresser

    resources :companies, path: :foretag

    resources :customers, path: :kunder do
      get :company, path: :foretag, on: :member
      resources :addresses, path: :adresser, on: :member

      resources :machines, path: :maskiner, on: :member do
        resources :works, path: :arbete, on: :member
      end

    end
    resources :cities, path: :stader do
      post :search, :sok, on: :collection
    end

    resources :machines, path: :maskiner

    resources :roles
    resources :work_types, path: :arbetstyper
  end

  # You can have the root of your site routed with "root"
  root 'statics#index'

end
