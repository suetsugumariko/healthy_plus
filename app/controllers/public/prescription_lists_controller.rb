class Public::PrescriptionListsController < ApplicationController
  def index
    @prescription_list = PrescriptionList.all
  end

  def new
    @prescription_list = PrescriptionList.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    prescription_list = PrescriptionList.new(prescription_list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    prescription_list.save
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
  def prescription_list_params
    params.require(:prescription_list).permit(:chemical_name, :prescription_period, :note)
  end

end
