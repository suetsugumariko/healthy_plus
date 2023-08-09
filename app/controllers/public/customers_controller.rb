class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, except: :index
  #before_action :set_current_customer

  def new
  end

  #サンプルデータ
  def index
     @customer = Customer.find(6)
     #@customer = Customer.all
     #グラフに関する内容
     #@records = HealthRecord.all
     @activity_and_sleep_log_charts = @customer.activity_and_sleep_log_charts
  end

  def create
    #データを受け取り新規登録するためのインスタンス作成
    @customer = Customer.new(customer_params)
    #データをデータベースに保存するためのsaveメソッド実行
    homes.save
    #index画面へリダイレクト
    redirect_to customers_guest_path
  end

  def show
     @customer = current_customer
  end

  def edit
     @customer = current_customer
  end

  def update
    customer = current_customer
    customer.update(customer_params)
    #マイページにリダイレクト
    redirect_to customers_my_page_path
  end

  def unsubscribe
  end

  def withdraw
     @customer = current_customer
     @customer.update(is_deleted: true)
    reset_session
     flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end




  private
  #ストロングパラメータ
  #formから送られてくるデータの中身
  def customer_params
  #require 送られたデータの中からモデル名を指定しデータを絞り込む
  #permit requireで絞り込んだデータの中から保存を許可するカラムを指定する
    params.require(:customer).permit(:guest, :email, :password, :start_time, :body_weight, :temperature, :pulse, :max_blood_pressure, :min_blood_pressure, :saturation, :exercise_time, :hours_of_sleep)
  end
end
