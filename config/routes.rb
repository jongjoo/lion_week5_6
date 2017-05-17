Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'test#main'
  
  get '/main' => 'test#main'
  get '/test' => 'test#test'
  post '/create' => 'test#create'
  get '/list' => 'test#list' 
  
  get '/content' => "test#content"
  get '/content/:id' => "test#content"

  get '/delete' => 'test#delete'
  get '/delete/:id' => 'test#delete'

  get '/edit' => 'test#edit'
  get '/edit/:id' => 'test#edit'
  
  post '/edit_2/:id' => 'test#edit_2'

  get '/lotto' => 'test#lotto'
  post '/getlotto' => 'test#getlotto'
  get 'lottolist' => 'test#lottolist'


  
  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
