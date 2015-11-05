Rails.application.routes.draw do
  
  devise_for :users

  resources :users, only: [:show] do
    resources :likes
    resources :comments
    resources :followers
    resources :followeds
  end

  resources :songposts do
  end



end

#                   Prefix Verb   URI Pattern                                 Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                    devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                    devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                   devise/sessions#destroy
#            user_password POST   /users/password(.:format)                   devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)               devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)              devise/passwords#edit
#                          PATCH  /users/password(.:format)                   devise/passwords#update
#                          PUT    /users/password(.:format)                   devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                     devise/registrations#cancel
#        user_registration POST   /users(.:format)                            devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                    devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                       devise/registrations#edit
#                          PATCH  /users(.:format)                            devise/registrations#update
#                          PUT    /users(.:format)                            devise/registrations#update
#                          DELETE /users(.:format)                            devise/registrations#destroy
#               user_likes GET    /users/:user_id/likes(.:format)             likes#index
#                          POST   /users/:user_id/likes(.:format)             likes#create
#            new_user_like GET    /users/:user_id/likes/new(.:format)         likes#new
#           edit_user_like GET    /users/:user_id/likes/:id/edit(.:format)    likes#edit
#                user_like GET    /users/:user_id/likes/:id(.:format)         likes#show
#                          PATCH  /users/:user_id/likes/:id(.:format)         likes#update
#                          PUT    /users/:user_id/likes/:id(.:format)         likes#update
#                          DELETE /users/:user_id/likes/:id(.:format)         likes#destroy
#            user_comments GET    /users/:user_id/comments(.:format)          comments#index
#                          POST   /users/:user_id/comments(.:format)          comments#create
#         new_user_comment GET    /users/:user_id/comments/new(.:format)      comments#new
#        edit_user_comment GET    /users/:user_id/comments/:id/edit(.:format) comments#edit
#             user_comment GET    /users/:user_id/comments/:id(.:format)      comments#show
#                          PATCH  /users/:user_id/comments/:id(.:format)      comments#update
#                          PUT    /users/:user_id/comments/:id(.:format)      comments#update
#                          DELETE /users/:user_id/comments/:id(.:format)      comments#destroy
#                     user GET    /users/:id(.:format)                        users#show
#                songposts GET    /songposts(.:format)                        songposts#index
#                          POST   /songposts(.:format)                        songposts#create
#             new_songpost GET    /songposts/new(.:format)                    songposts#new
#            edit_songpost GET    /songposts/:id/edit(.:format)               songposts#edit
#                 songpost GET    /songposts/:id(.:format)                    songposts#show
#                          PATCH  /songposts/:id(.:format)                    songposts#update
#                          PUT    /songposts/:id(.:format)                    songposts#update
#                          DELETE /songposts/:id(.:format)                    songposts#destroy