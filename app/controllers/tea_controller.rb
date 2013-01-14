class TeaController < ApplicationController
  def index
    @teas = Tea.all
    @tea = Tea.new
    @title = 'Home'
  end

  def show
    @tea = Tea.find params[:id]
    @title = @tea.name
  end

  def create
    @tea = Tea.new params[:tea]
    if @tea.save
      redirect_to "/"
    else
      raise ActionController::RoutingError.new('Not Found')
    end

    @title = 'New Tea'
  end

  def edit
    @tea = Tea.find params[:id]
    @title = "Edit"
  end

  def update
    @tea = Tea.find(params[:id])
    if @tea.update_attributes params[:tea]
      redirect_to tea_path
    else
      render action: :edit
    end
  end

  def destroy
    @tea = Tea.find params[:id]
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
    when term.match(/name:/)
      term.slice!('name:')
      @results = Tea.where("lower(name) = ?", term.strip.downcase)
    when term.match(/origin:/)
      term.slice!('origin:')
      @results = Tea.where("lower(origin) = ?", term.strip.downcase)
    else
      @results = Tea.where("lower(name) = ? OR lower(company) = ? OR lower(tea_type) = ? OR lower(origin) = ?", 
                            params[:term].downcase, params[:term].downcase, params[:term].downcase, params[:term].downcase)
    end

    @count = @results.count
    @title = 'Search'
  end

end
