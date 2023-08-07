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
    resources :cooking_menu_lists,only: [:index,:create,]
    #美容、栄養豆知識表
    resources :beauty_nutrition_knowledges,only: [:index,:create,]
    #会員
      get   '/customers/my_page' => 'customers#show'
      get   '/customers/edit_page' => 'customers#edit'
      patch '/customers/infomation' => 'customers#update'
      get   '/customers/unsubscribe' => 'customers#unsubscribe'
      patch '/customers/withdraw' => 'customers#withdraw'
      get   '/customers/guest' => 'customers#index'

    #体調管理記録表
    resources :health_records,only: [:index,:new,:create,:edit,:update,:destroy] do
    end

    #活動、睡眠記録表
    resources :activity_and_sleep_log_charts,only: [:index,:new,:create,:edit,:update,:destroy] do
    end

    #服用記録表
    resources :dosage_record_sheets


    #処方箋一覧
    resources :prescription_lists,only: [:index,:new,:create,:edit,:update,:destroy] do
    end

    #次回受診日表
    resources :next_medical_checkup_date_lists,only: [:index,:new,:show,:create,:edit,:update,:destroy] do
    end
 end

# 管理者用
# URL /admin/sign_in ...
#生成したコントローラがどこに存在するのかを記述
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}


 namespace :admin do
    root 'homes#top'
    resources :customers,only: [:index,:show,:create,:edit,:update,:destroy]
    #管理者　美容、栄養豆知識表
    resources :beauty_nutrition_knowledges do
  end
    #管理者　食事メニュー表
    resources :cooking_menu_lists,only: [:index,:new,:create,:show,:edit,:update,:destroy] do
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 end
end
