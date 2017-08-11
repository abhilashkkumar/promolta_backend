Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'login' => 'authentication#authenticate'
      post 'send' => 'email#send_email'
      get 'inbox' => 'email#inbox'
      post 'update_read' => 'email#read_update'
      post 'save_draft' => 'email#save_draft'
      get 'get_draft' => 'email#get_draft'
      post 'update_draft' => 'email#draft_update'
      post 'indentation' => 'email#indentation'
    end
  end


end
