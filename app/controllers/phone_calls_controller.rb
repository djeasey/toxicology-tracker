class PhoneCallsController < ApplicationController
  before_action :set_phone_call, only: [:show]
  def index
    @phone_calls = PhoneCall.all
  end

  def show
  end

  def new
    @phone_call = PhoneCall.new
  end

  def create
    @phone_call = PhoneCall.new(phone_call_params)
    @phone_call.save
    flash.notice = "Phone Call from '#{@phone_call.caller}' Logged!"
    redirect_to phone_call_path(@phone_call)
  end

  private

  def set_phone_call
    @phone_call = PhoneCall.find(params[:id])
  end

  def phone_call_params
    params.require(:phone_call).permit(:caller, :start_time, :end_time)
  end
end
