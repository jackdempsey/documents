Rails.application.routes.draw do

  mount Documents::Engine => "/documents"
end
