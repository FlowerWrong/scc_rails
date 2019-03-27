SccRails::Engine.routes.draw do
  get '/refresh', to: 'application#refresh', as: 'refresh'
end
