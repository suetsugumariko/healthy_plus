class Public::DosageRecordSheetsController < ApplicationController
  def index
    @dosage_record_sheet = DosageRecordSheet.all
  end

  def new
     @dosage_record_sheet = DosageRecordSheet.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dosage_record_sheet_parameter
    params.require(:dosage_record_sheet).permit(:start_time, :title, :body)
  end

end
