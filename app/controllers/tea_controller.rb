class TeaController < ApplicationController
  def index
    @teas = Tea.all
    @tea = Tea.new
  end

  def show
    @tea = Tea.find(params[:id])
  end

  def create
    @tea = Tea.new(params[:tea])
    if @tea.save
      redirect_to "/"
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def destroy
    @tea = Tea.find(params[:id])
    @tea.destroy

    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end
end
