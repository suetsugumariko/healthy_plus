class Public::DosageRecordSheetsController < ApplicationController
  def index
    @dosage_record_sheet = DosageRecordSheet.all
  end

  def new
     @dosage_record_sheet = DosageRecordSheet.new
  end

  def create
    #データを受け取り新規登録するためのインスタンス作成
    @dosage_record_sheet = DosageRecordSheet.new
    #データをデータベースに保存するためのsaveメソッド実行
    @dosage_record_sheet.save
    #リダイレクト
    redirect_to  dosage_record_sheets_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dosage_record_sheet_parameter
    params.require(:dosage_record_sheet).permit(:start_time, :title, :body,:content)
  end

end
