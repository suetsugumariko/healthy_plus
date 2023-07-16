class Public::ActivityAndSleepLogChartsController < ApplicationController
  def index
    @activity_and_sleep_log_charts = ActivityAndSleepLogChart.all
  end

  def new
    @activity_and_sleep_log_chart = ActivityAndSleepLogChart.new
     #グラフに関する内容
    @activity_and_sleep_log_charts = ActivityAndSleepLogChart.all
  end


  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    activity_and_sleep_log_chart = ActivityAndSleepLogChart.new(activity_and_sleep_log_chart_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    activity_and_sleep_log_chart.save
    # 4. トップ画面へリダイレクト
    redirect_to  activity_and_sleep_log_charts_path
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  # ストロングパラメータ
  def activity_and_sleep_log_chart_params
    params.require(:activity_and_sleep_log_chart).permit(:exercise_time, :hours_of_sleep)
  end
end
