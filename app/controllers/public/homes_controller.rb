class Public::HomesController < ApplicationController
  def top
    @homes = Homes.new
    @homes = Homes.all
  end


  def create
    #データを受け取り新規登録するためのインスタンス作成
    homes = Homes.new(homes_params)
    #データをデータベースに保存するためのsaveメソッド実行
    homes.save
    #トップ画面へリダイレクト
    redirect_to '/'
  end



  def about
  end


  private
  #ストロングパラメータ
  #formから送られてくるデータの中身
  def homes_params
  #require 送られたデータの中からモデル名を指定しデータを絞り込む
  #permit requireで絞り込んだデータの中から保存を許可するカラムを指定する
    params.require(:homes).permit(:start_time, :body_weight, :temperature, :pulse, :max_blood_pressure, :min_blood_pressure, :saturation, :exercise_time, :hours_of_sleep)
  end


end

