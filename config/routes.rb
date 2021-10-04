Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'api/base#index'
  namespace 'api' do
    resources :category, :product
  end
end
