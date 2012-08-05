Rails.application.routes.draw do root to: 'home#index'


  mount Documents::Engine => "/documents"
end
