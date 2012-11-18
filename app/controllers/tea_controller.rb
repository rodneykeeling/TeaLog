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
end
