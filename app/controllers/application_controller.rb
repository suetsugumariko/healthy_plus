# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # devise利用の機能（ユーザー登録、ログイン認証など）が行われる前に下記のメソッドが実行される
  before_action :configure_permitted_parameters, if: :devise_controller?


  # 初期設定を上書き。　Aboutページへ遷移するよう設定
  def after_sign_in_path_for(resource)
    if resource.class == Admin
      admin_root_path
    else
      root_path
    end
  end

  # ログアウト後、rootへ遷移するよう設定
  def after_sign_out_path_for(resource)
    root_path
  end


  protected
    # ユーザー登録（sign_up）の際に、ユーザー名（name）のデータ操作を受け取り許可与えるための記述
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
