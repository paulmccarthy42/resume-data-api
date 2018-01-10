Rails.application.routes.draw do
  post 'student_token' => 'student_token#create'
  namespace :v1 do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"
  end
end
