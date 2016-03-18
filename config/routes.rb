Rails.application.routes.draw do

  resources 'ui', only: :index
  get 'ui/:action', controller: 'ui'
end
