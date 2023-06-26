class Public::HealthRecordsController < ApplicationController
  def index
    @health_record = HealthRecord.new
  end

  def new
    @health_record = HealthRecord.new

  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    health_record = HealthRecord.new(health_record_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    health_record.save
    # 4. トップ画面へリダイレクト
    redirect_to health_records_path
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
