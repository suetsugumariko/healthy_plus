# frozen_string_literal: true

class Public::NextMedicalCheckupDateListsController < ApplicationController
  def index
    #次回受診日カレンダー機能　各会員のデータ表示
    @next_medical_checkup_date_list = current_customer.next_medical_checkup_date_lists
  end

  def new
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.new
  end


  def show
    #idという条件指定してfind_byと入力しidにparams渡すとコードが存在している時、redirect_toする
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.find_by(id: params[:id])
    #nilだった場合、redirect_toで返す
     if @next_medical_checkup_date_list == nil
      redirect_to next_medical_checkup_date_lists_path
       #メソッド抜ける　customerが違うとレコード取れてビューのレンダーが行われる
      return
     end
     if @next_medical_checkup_date_list.customer!= current_customer
      redirect_to next_medical_checkup_date_lists_path
     end
    # current_customer.start_time = Time.now.utc.to_s(:db)
  end


  def create
    # データを受け取り新規登録するためのインスタンス作成
    @next_medical_checkup_date_list = current_customer.next_medical_checkup_date_lists.build(next_medical_checkup_date_list_parameter)
    # データをデータベースに保存するためのsaveメソッド実行
    if @next_medical_checkup_date_list.save
      flash[:notice] = "success"
      redirect_to next_medical_checkup_date_lists_path
    else
      flash.now[:alert] = "failed"
      render :new
    end
  end

  def edit
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.find(params[:id])
  end

  def update
    next_medical_checkup_date_list = NextMedicalCheckupDateList.find(params[:id])
    next_medical_checkup_date_list.update(next_medical_checkup_date_list_parameter)
    redirect_to next_medical_checkup_date_lists_path
  end

  def destroy
    next_medical_checkup_date_list = NextMedicalCheckupDateList.find(params[:id])  # データ（レコード）を1件取得
    next_medical_checkup_date_list.destroy  # データ（レコード）を削除
    redirect_to next_medical_checkup_date_lists_path
  end



  private
    def next_medical_checkup_date_list_parameter
      params.require(:next_medical_checkup_date_list).permit(:start_time, :title, :content)
    end
end
