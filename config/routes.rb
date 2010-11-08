Nelsonmontalvo::Application.routes.draw do
  match '' => 'memorium#index'
  match 'home' => 'memorium#index'
  match 'last_picture' => 'memorium#picture'
  match 'funeral' => 'memorium#funeral'
  match 'blog' => 'memorium#blog'
  match 'obituary' => 'memorium#obituary'
  match '/:controller(/:action(/:id))'
end
