Rails.application.routes.draw do
  get '/', to: 'api#index', as: 'api'
  get '/docs', to: 'api#docs', as: 'api_docs'

  resources :transactions
  resources :categories do
    resources :budgets
  end
  get '/currencies', to: 'currencies#index', as: 'currencies'
  get '/currencies/:id', to: 'currencies#show', as: 'currency'
  get 'transaction-types', to: 'transaction_types#index', as: 'transaction_types'
  get 'transaction-types/:id', to: 'transaction_types#show', as: 'transaction_type'

  resources :wallets
end
