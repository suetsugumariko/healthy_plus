# frozen_string_literal: true

class Public::DosageRecordSheetsController < ApplicationController
  def index
    #服用カレンダー機能　各会員のデータ表示
    @dosage_record_sheet = current_customer.dosage_record_sheets
  end

  def new
    @dosage_record_sheet = DosageRecordSheet.new
  end

  def show
    @dosage_record_sheet = DosageRecordSheet.find_by(id: params[:id])
    if @dosage_record_sheet == nil
      redirect_to dosage_record_sheets_path
      return
    end
    if @dosage_record_sheet.customer!= current_customer
      redirect_to dosage_record_sheets_path
    end
  end

  def create
    # データを受け取り新規登録するためのインスタンス作成
    @dosage_record_sheet = current_customer.dosage_record_sheets.build(dosage_record_sheet_parameter)
    # データをデータベースに保存するためのsaveメソッド実行
    if @dosage_record_sheet.save
      flash[:notice] = "success"
      redirect_to dosage_record_sheets_path
    else
      flash.now[:alert] = "failed"
      render :new
    end
  end



  def update
  end

  def destroy
  end

  private
    def dosage_record_sheet_parameter
      params.require(:dosage_record_sheet).permit(:start_time, :title, :content)
    end
end
