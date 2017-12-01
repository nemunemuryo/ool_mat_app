Rails.application.routes.draw do

  resources :vlans, param: :vlanid

  get 'vlans/show'

  get 'topology/update'
  get 'topology/addvlan'

  root to: 'topology#show'
  get 'edit', to: 'topology#edit'
  get 'config', to: 'topology#configs'
  patch 'config', to: 'topology#configsmodify'
  post 'config', to: 'topology#configsmodify'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
