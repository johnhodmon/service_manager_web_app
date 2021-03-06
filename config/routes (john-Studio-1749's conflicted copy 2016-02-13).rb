Rails.application.routes.draw do
  
 #root 'jobs#show', :id => Job.all[0].id  
  resources :photos
  resources :users
  resources :reports
  resources :invoices
  resources :engineers
  resources :jobs
  resources :parts
  resources :customer_products
  resources :customers
  resources :manufacturers
  resources :products

 
  delete 'customer_product'=>'customer_products#destroy'
   delete 'part_list'=>'part_lists#destroy'
   delete 'job_part'=>'job_parts#destroy'

  post 'customers/:id'=>'customer_products#create'
  post 'jobs/:id'=>'job_parts#create'
  post 'products/:id'=>'part_lists#create'

get 'login' => 'sessions#new'
post 'login'=> 'sessions#create'
delete 'logout' =>'sessions#destroy'
delete 'job_parts/:id'=>'job_parts#destroy'
get 'job_parts'=>'job_parts#index'
put 'job_parts'=>'job_parts#update'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
