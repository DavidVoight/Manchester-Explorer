Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  resources :portfolios do
    resources :stocks
  end

  resources :investmentphilosophy
  resources :bios

end
