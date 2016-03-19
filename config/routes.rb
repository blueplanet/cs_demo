Rails.application.routes.draw do
  resources 'topics', only: :index

  resources 'ui', only: :index
  get 'ui/:action', controller: 'ui'
end
