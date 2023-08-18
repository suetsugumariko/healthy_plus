class Public::PrescriptionListsController < ApplicationController
  def index
    @prescription_lists = current_customer.prescription_lists.all
  end

  def new
    @prescription_list = PrescriptionList.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @prescription_list = current_customer.prescription_lists.build(prescription_list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @prescription_list.save
      flash[:notice] = "success"
      # 4. トップ画面へリダイレクト
      redirect_to prescription_lists_path
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
    # ストロングパラメータ
    def prescription_list_params
      params.require(:prescription_list).permit(:chemical_name, :prescription_period, :note)
    end
end
