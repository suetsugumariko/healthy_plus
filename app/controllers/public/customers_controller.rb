class Public::CustomersController < ApplicationController


  def new
  end


  def index
     @customer = Customer.new
     @customer = Customer.all
     #グラフに関する内容
     #@records = HealthRecord.all
  end

  def create
    #データを受け取り新規登録するためのインスタンス作成
    @customer = Customer.new(customer_params)
    #データをデータベースに保存するためのsaveメソッド実行
    homes.save
    #トップ画面へリダイレクト
    redirect_to '/'
  end

  def show
     @customer = current_customer
  end

  def edit
     @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    #マイページにリダイレクト
    redirect_to customers_my_page_path(customer.id)
  end

  def unsubscribe
  end

  def withdraw
     @customer.update(is_active: false)
    reset_session
    redirect_to root_path
  end




  private
  #ストロングパラメータ
  #formから送られてくるデータの中身
  def list_params
  #require 送られたデータの中からモデル名を指定しデータを絞り込む
  #permit requireで絞り込んだデータの中から保存を許可するカラムを指定する
    params.require(:customer).permit(:guest, :last_name, :first_name, :last_name_kana, :first_name_kana, :email, :encrypted_password, :start_time, :body_weight, :temperature, :pulse, :max_blood_pressure, :min_blood_pressure, :saturation, :exercise_time, :hours_of_sleep)
  end
end
