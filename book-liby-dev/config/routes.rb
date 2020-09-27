Rails.application.routes.draw do

  # Rout request come in to its demo contoller and index action
  #then contoller has an action, and rendering the view
  #root route
  root 'books#index'

  #simple route
 get 'demo/index'
 get 'demo/hello'


  resources :books do
    member do
      get :delete
    end
  end
 #get 'books/index'
 #get 'books/show'
 #get 'books/new'
 #get 'books/edit'
 #get 'books/delete'


  #default route
 #get ':controller(/:action(/:id))'


end
