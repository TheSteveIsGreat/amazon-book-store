Rails.application.routes.draw do
  
  namespace :api do
    get 'authors', to: 'authors#index'
    post 'authors', to: 'authors#create'
    get 'authors/:id', to: 'authors#show'
    put 'authors/:id', to: 'authors#update'
    delete 'authors/:id', to: 'authors#destroy'

    get 'authors/:author_id/books', to: 'books#index'
    post 'authors/:author_id/books', to: 'books#create'
    get 'authors/:author_id/books/:id', to: 'books#show'
    #put
    #delete

  end
end
