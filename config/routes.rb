Rails.application.routes.draw do
  resources 'topics', only: %i(index show)
  resources 'nodes', only: :show
  resources 'users', only: %i(show create)

  get 'sign_up', to: 'users#new'

  resources 'ui', only: :index
  get 'ui/:action', controller: 'ui'

  root to: 'topics#index'
end
