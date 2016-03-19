Rails.application.routes.draw do
  resources 'topics', only: :index
  resources 'nodes', only: :show

  resources 'ui', only: :index
  get 'ui/:action', controller: 'ui'
end
