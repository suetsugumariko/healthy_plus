class ApplicationController < ActionController::Base
   #devise利用の機能（ユーザー登録、ログイン認証など）が行われる前に下記のメソッドが実行される
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  #ユーザー登録（sign_up）の際に、ユーザー名（name）のデータ操作を受け取り許可与えるための記述
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end
