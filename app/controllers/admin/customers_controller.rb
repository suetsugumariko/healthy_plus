# frozen_string_literal: true

#会員一覧画面（管理者用）
class Admin::CustomersController < ApplicationController
  #adminでログインしているのかをチェックしている　管理者以外は閲覧できないようにするもの
  before_action :authenticate_admin!
  def index
    @customers = Customer.all
  end

  def new
  end

  def create
    # データを受け取り新規登録するためのインスタンス作成
    @customer = Customer.new(customer_params)
    # データをデータベースに保存するためのsaveメソッド実行
    customer.save
    # リダイレクト
    redirect_to admin_customers_path
  end

  def show
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customers_path, notice:"ユーザー情報更新しました"
  end

  def withdraw
    @customer = Customer.find_by(name: params[:name])
    @customer.update(is_valid: false)
    reset_session
    redirect_to root_path
  end

  def destroy
    customer = Customer.find(params[:id])  # データ（レコード）を1件取得
    customer.destroy  # データ（レコード）を削除
    redirect_to admin_customers_path  # 投稿一覧画面へリダイレクト
  end

  private
    def customer_params
      params.require(:customer).permit(:guest, :last_name, :first_name, :email)
    end
end
