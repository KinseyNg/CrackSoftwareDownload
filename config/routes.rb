Crack::Application.routes.draw do
  get "software/index"
  get "software/detail"
  get "software/wait"
  get "software/back"
  get "software/email"
  get "software/help"
  get "software/about"
  get "software/faq"
  get "software/contect"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'software#index'

  get '/detail/:detail' =>'software#detail'
  get '/detail/:type/:detail' =>'software#detail'
  get '/download/:location/:id'=>'software#wait'
  get '/download/email' =>'software#email'
  post '/software/email'   =>'software#sent'

  get '/sitemap/:num/:end' => 'software#sitemap'
 # get '/software/email' =>software#sent
#  get ''=> 'software#email'

 # get '/software/index' =>'software#index'
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
