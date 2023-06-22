Rails.application.routes.draw do


  # 顧客用
# URL /customers/sign_in ...
#生成したコントローラがどこに存在するのかを記述
devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

 scope module: :public do
      root to: 'homes#top'
       post '/homes' => 'homes#creat'
       get   '/about' => 'homes#about'

    resources :homes,only: [:top,:about]
    #食事メニュー表
    resources :cooking_menu_lists,only: [:index]
    #美容、栄養豆知識表
    resources :beauty_nutrition_knowledges,only: [:index]
    #会員
      get   '/customers/my_page' => 'customers#show'
      get   '/customers/edit' => 'customers#edit'
      patch '/customers/infomation' => 'customers#update'
      get   '/customers/unsubscribe' => 'customers#unsubscribe'
      patch '/customers/withdraw' => 'customers#withdraw'
      get   '/customers/guest' => 'customers#index'

    #体調管理記録表
    resources :health_records,only: [:index,:new,:edit,:update,:destroy] do
      get    '/health_records' => 'health_records#index'
      post   '/health_records/new' => 'health_records#new'
      get    '/health_records/:id/edit' => 'health_records#edit'
      patch  '/health_records/:id' => 'health_records#update'
      delete '/health_records/:id' => 'health_records#destroy'

  end

    #活動、睡眠記録表
    resources :activity_and_sleep_log_charts,only: [:index,:new,:edit,:update,:destroy] do
      get    '/activity_and_sleep_log_charts'  => 'activity_and_sleep_log_charts#index'
      post   '/activity_and_sleep_log_charts/new' => 'activity_and_sleep_log_charts#new'
      get    '/activity_and_sleep_log_charts/:id/edit' => 'activity_and_sleep_log_charts#edit'
      patch  '/activity_and_sleep_log_charts/:id' =>'activity_and_sleep_log_charts#update'
      delete '/activity_and_sleep_log_charts/:id' => 'activity_and_sleep_log_charts#destroy'
  end

    #服用記録表
    resources :dosage_record_sheets,only: [:index,:new,:edit,:update,:destroy] do
      get    '/dosage_record_sheets' => 'dosage_record_sheets#index'
      post   '/dosage_record_sheets/new' => 'dosage_record_sheets#new'
      get    '/dosage_record_sheets/:id/edit' => 'dosage_record_sheets#edit'
      patch  '/dosage_record_sheets/:id' => 'dosage_record_sheets#update'
      delete 'dosage_record_sheets/:id' => 'dosage_record_sheets#destroy'
  end

    #処方箋一覧
    resources :prescription_lists,only: [:index,:new,:edit,:update,:destroy] do
      get    '/prescription_lists' => 'prescription_lists#index'
      post   '/prescription_lists/new' => 'prescription_lists#new'
      get    '/prescription_lists/:id/edit' => 'prescription_lists#edit'
      patch  '/prescription_lists/:id' => 'prescription_lists#update'
      delete '/prescription_lists/:id' => 'prescription_lists#destroy'
  end

    #次回受診日表
    resources :next_medical_checkup_date_lists,only: [:index,:new,:edit,:update,:destroy] do
      get    '/next_medical_checkup_date_lists' => 'next_medical_checkup_date_list#index'
      post   '/next_medical_checkup_date_lists/new' => 'next_medical_checkup_date_list#new'
      get    '/next_medical_checkup_date_lists/:id/edit' => 'next_medical_checkup_date_list#edit'
      patch  '/next_medical_checkup_date_lists/:id' => 'next_medical_checkup_date_list#update'
      delete '/next_medical_checkup_date_lists/:id' => 'next_medical_checkup_date_list#destroy'
    end
 end

  #namespace :public do
    #get 'customers/show'
    #get 'customers/edit'
    #get 'customers/update'
    #get 'customers/unsubscribe'
    #get 'customers/withdraw'
  #end
  #namespace :public do
    #get 'sessions/new'
    #get 'sessions/create'
    #get 'sessions/destroy'
  #end
  #namespace :public do
    #get 'registrations/new'
    #get 'registrations/create'
  #end





# 管理者用
# URL /admin/sign_in ...
#生成したコントローラがどこに存在するのかを記述
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}


 namespace :admin do
      get  '/admin' => 'homes#top'
    resources :customers,only: [:index,:show,:edit,:update]
    #管理者　美容、栄養豆知識表
    resources :beauty_nutrition_knowledges,only: [:index,:new,:create,:show,:edit,:update]
      get  '/admin/beauty_nutrition_knowledges' => 'beauty_nutrition_knowledges#index'
      get  '/admin/beauty_nutrition_knowledges/new' => 'beauty_nutrition_knowledges#new'
      post '/admin/beauty_nutrition_knowledges' => 'beauty_nutrition_knowledges#create'
      get  '/admin/beauty_nutrition_knowledges/:id' => 'beauty_nutrition_knowledges#show'
      get  '/admin/beauty_nutrition_knowledges/:id/edit' => 'beauty_nutrition_knowledges#edit'
      patch'/admin/beauty_nutrition_knowledges/:id' => 'beauty_nutrition_knowledges#update'


    #管理者　食事メニュー表
    resources :cooking_menu_lists,only: [:index,:new,:create,:show,:edit,:update] do
     get '/admin/cooking_menu_lists/index' => 'cooking_menu_lists#index'
     get '/admin/cooking_menu_lists/new' => 'cooking_menu_lists#new'
     post '/admin/cooking_menu_lists' => 'cooking_menu_lists#create'
     get '/admin/cooking_menu_lists/:id' => 'cooking_menu_lists#show'
     get '/admin/cooking_menu_lists/:id/edit' => 'cooking_menu_lists#edit'
     patch '/admin/cooking_menu_lists/:id' => 'cooking_menu_lists#update'
  end

    #get 'customers/index'
    #get 'customers/show'
    #get 'customers/edit'
    #get 'customers/update'
  #end

    #get 'sessions/new'
    #get 'sessions/create'
    #get 'sessions/destroy'
  #end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 end
end
