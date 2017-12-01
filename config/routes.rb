Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resource :posts
  resource :products
  resource :order_items
  resource :cart, only: [:show] do
  put 'add/:clothe_id', to: 'carts#add', as: :add_to
  put 'remove/:clothe_id', to: 'carts#remove', as: :remove_from
end
  root 'posts#index'
  root 'products#index'

end
