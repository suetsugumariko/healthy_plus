# frozen_string_literal: true

class Public::ActivityAndSleepLogChartsController < ApplicationController
  def index
    #活動、睡眠記録表　各会員のデータを表示
    @activity_and_sleep_log_charts = current_customer.activity_and_sleep_log_charts
  end

  def new
    @activity_and_sleep_log_chart = ActivityAndSleepLogChart.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @activity_and_sleep_log_chart = current_customer.activity_and_sleep_log_charts.build(activity_and_sleep_log_chart_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @activity_and_sleep_log_chart.save
      flash[:notice] = "success"
      # 4. トップ画面へリダイレクト
      redirect_to activity_and_sleep_log_charts_path
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
    def activity_and_sleep_log_chart_params
      params.require(:activity_and_sleep_log_chart).permit(:start_time, :exercise_time, :hours_of_sleep)
    end
end
