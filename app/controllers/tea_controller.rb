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
  
  def search
    term = params[:term]
    case
    when term.match(/^company:/)
      term.slice!('company:')
      @results = Tea.where("lower(company) = ?", term.strip.downcase)
    when term.match(/type:/)
      term.slice!('type:')
      @results = Tea.where("lower(tea_type) = ?", term.strip.downcase)
    else
      @results = Tea.where("lower(name) = ? OR lower(company) = ? OR lower(tea_type) = ? OR lower(origin) = ?", 
                            params[:term].downcase, params[:term].downcase, params[:term].downcase, params[:term].downcase)
    end

    @count = @results.count
  end

end
