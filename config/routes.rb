Rails.application.routes.draw do

  namespace :api do

    get 'group', to: 'groups#show', as: 'group_show'



    resources :groups do
      get :collections, on: :member
      post :add_to_collections, on: :member
      post :remove_from_collections, on: :member
      resources :groups
    end

    resources :jokes do
      get :collectiond_by, on: :member
      resources :jokes
    end

  end

end
