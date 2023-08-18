class Public::HealthRecordsController < ApplicationController
  def index
    @health_records = HealthRecord.new
    # グラフに関する内容
    @health_records = HealthRecord.all
    # @health_records = HealthRecord.all.map do |record|
    # byebug
    # record.attributes.tap do |attrs|
    # if record.start_time
    #  attrs["start_time"] = record.start_time.strftime('%a, %d %b %Y %H:%M:%S')
    # end
    # end
    # end
    @customer = Customer.find(1)
    # @health_records = @customer.health_record_sheets
  end

  def new
    @health_record = HealthRecord.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @health_record = current_customer.health_records.new(health_record_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @health_record.save
      flash[:notice] = "success"
      # 4. トップ画面へリダイレクト
      redirect_to health_records_path
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
    def health_record_params
      params.require(:health_record).permit(:start_time, :body_weight, :temperature, :pulse, :max_blood_pressure, :min_blood_pressure, :saturation)
    end
end
