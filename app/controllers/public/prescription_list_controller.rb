class Public::PrescriptionListController < ApplicationController
  def index
  end

  def new
    @prescriptionlist = PrescriptionList.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    prescriptionlist = PrescriptionList.new(prescriptionlist_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    prescriptionlist.save
    # 4. 処方箋一覧画面へリダイレクト
    redirect_to 'prescription_lists_path'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  # ストロングパラメータ
  def prescriptionlist_params
    params.require(:prescriptionlist).permit(:chemical_name, :prescription_period, :note)
  end

end
