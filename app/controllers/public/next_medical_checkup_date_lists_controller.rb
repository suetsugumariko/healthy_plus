class Public::NextMedicalCheckupDateListsController < ApplicationController
  def index
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.all
  end

  def new
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.new
  end


  def show
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.find(params[:id])
  end


  def create
    #データを受け取り新規登録するためのインスタンス作成
    @next_medical_checkup_date_list = current_customer.next_medical_checkup_date_lists.build(next_medical_checkup_date_list_parameter)
    #データをデータベースに保存するためのsaveメソッド実行
    if @next_medical_checkup_date_list.save
      flash[:notice] = "success"
      redirect_to  next_medical_checkup_date_lists_path
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

  def next_medical_checkup_date_list_parameter
    params.require(:next_medical_checkup_date_list).permit(:start_time, :title, :content)
  end


end
