class Public::DosageRecordSheetsController < ApplicationController
  def index
    @dosage_record_sheet = DosageRecordSheet.all
  end

  def new
    @dosage_record_sheet = DosageRecordSheet.new
  end

  def show
    @dosage_record_sheet = DosageRecordSheet.find(params[:id])
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

  def edit
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
