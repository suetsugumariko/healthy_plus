class Public::NextMedicalCheckupDateListsController < ApplicationController
  def index
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.all
  end

  def new
    @next_medical_checkup_date_list = NextMedicalCheckupDateList.new
  end

  def edit
  end

  def update
  end

  def destroy
  end



  private

  def next_medical_checkup_date_list_parameter
    params.require(:next_medical_checkup_date_list).permit(:start_time, :title, :body)
  end


end
