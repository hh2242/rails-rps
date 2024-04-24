Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '/:page_name', to: 'game#show'
end
