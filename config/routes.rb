Rails.application.routes.draw do
 
  root to: "homes#top"
  # devise_for :admins
  # devise_for :users
  get 'about' => 'homes#about'
  
  
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  
end
