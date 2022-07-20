# frozen_string_literal: true

Rails.application.routes.draw do
  post '/transactions', to: 'transactions#create'
  get '/transactions/history/:id', to: 'transactions#history', as: 'transactions_history'
end
