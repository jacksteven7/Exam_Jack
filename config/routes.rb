Rails.application.routes.draw do
  get 'app/redirect'

  get 'answers/_answer'
  get 'questions/_question'
#  get 'app/redirect'   => 'app#redirect'
#  get '/redirect' => 'app#redirect', as: 'redirect'
  get "/redirect", to: "app#redirect"
  resources :exams do
    resources :questions do
    	resources :answers
    end
    member do
    	patch :preview
    end
  end

  root "exams#index"

end
