Rails.application.routes.draw do
  post '/run_python', to: 'run#run_python'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
