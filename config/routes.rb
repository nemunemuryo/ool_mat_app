Rails.application.routes.draw do
  # get 'topology/show'
  # get 'topology/edit'
  get 'topology/update'

  root to: 'topology#show'
  get 'edit', to: 'topology#edit'
  get 'modify', to: 'topology#modify'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
