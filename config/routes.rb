ProjectoPortfolio::Application.routes.draw do

  get 'registar' => 'pagina#registar'

  resources :curriculos_empregos

  resources :funcao_usuarios

  resources :funcao_concursos

  resources :funcao_empregos

  resources :industria_usuarios

  resources :industria_concursos

  resources :industria_empregos

  resources :provincia_concursos

  resources :provincia_empregos

  resources :funcaos

  resources :industria

  resources :provincia

  devise_for :usuarios

  resources :empregos

  resources :proposta

  resources :curriculos

  resources :concursos

  resources :estado_proposta

  resources :estado_curriculos

  resources :tipo_concursos

  resources :tipo_usuarios

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pagina#inicio'

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
