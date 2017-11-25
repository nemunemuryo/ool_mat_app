Rails.application.routes.draw do

  # resources :vlans
  resources :vlans, param: :vlanid

  get 'vlans/show'

  get 'topology/update'
  get 'topology/addvlan'

  root to: 'topology#show'
  get 'edit', to: 'topology#edit'
  get 'vlan', to: 'topology#vlans'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
