Rails.application.routes.draw do
  get 'topology/show'
  get 'topology/edit'

  root to: 'topology#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
