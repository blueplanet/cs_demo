Rails.application.routes.draw do
  resources 'topics', only: %i(index show)
  resources 'nodes', only: :show
  resources 'users', only: :show

  resources 'ui', only: :index
  get 'ui/:action', controller: 'ui'
end
