Rails.application.routes.draw do

  namespace :admin do
    get 'cooking_menu_list/index'
    get 'cooking_menu_list/new'
    get 'cooking_menu_list/create'
    get 'cooking_menu_list/show'
    get 'cooking_menu_list/edit'
    get 'cooking_menu_list/update'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/new'
    get 'customers/create'
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :admin do
    get 'beauty_nutrition_knowledge/index'
    get 'beauty_nutrition_knowledge/new'
    get 'beauty_nutrition_knowledge/create'
    get 'beauty_nutrition_knowledge/show'
    get 'beauty_nutrition_knowledge/edit'
    get 'beauty_nutrition_knowledge/update'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'next_medical_checkup_date_list/index'
    get 'next_medical_checkup_date_list/new'
    get 'next_medical_checkup_date_list/edit'
    get 'next_medical_checkup_date_list/update'
    get 'next_medical_checkup_date_list/destroy'
  end
  namespace :public do
    get 'prescription_list/index'
    get 'prescription_list/new'
    get 'prescription_list/edit'
    get 'prescription_list/update'
    get 'prescription_list/destroy'
  end
  namespace :public do
    get 'dosage_record_sheet/index'
    get 'dosage_record_sheet/new'
    get 'dosage_record_sheet/edit'
    get 'dosage_record_sheet/update'
    get 'dosage_record_sheet/destroy'
  end
  namespace :public do
    get 'activity_and_sleep_log_chart/index'
    get 'activity_and_sleep_log_chart/new'
    get 'activity_and_sleep_log_chart/edit'
    get 'activity_and_sleep_log_chart/update'
    get 'activity_and_sleep_log_chart/destroy'
  end
  namespace :public do
    get 'health_record/index'
    get 'health_record/new'
    get 'health_record/edit'
    get 'health_record/update'
    get 'health_record/destroy'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
  end
  namespace :public do
    get 'beauty_nutrition_knowledge/index'
  end
  namespace :public do
    get 'cooking_menu_list/index'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :public do
    namespace :public do
      get 'homes/top'
      get 'homes/about'
    end
  end
  namespace :public do
    namespace :public do
      get 'cooking_menu_list/index'
    end
  end
  namespace :public do
    namespace :public do
      get 'beauty_nutrition_knowledge/index'
    end
  end
  # 顧客用
# URL /customers/sign_in ...
#生成したコントローラがどこに存在するのかを記述
devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
#生成したコントローラがどこに存在するのかを記述
devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
end
