Rails.application.routes.draw do
  get 'topology/update'
  get 'topology/addvlan'

  root to: 'topology#show'
  get 'edit', to: 'topology#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
