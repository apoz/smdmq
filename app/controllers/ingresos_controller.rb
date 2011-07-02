class IngresosController < ApplicationController
	load_and_authorize_resource
	before_filter :authenticate_user!
  # GET /ingresos
  # GET /ingresos.xml
  def index
    @ingresos = Ingreso.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ingresos }
    end
  end

  # GET /ingresos/1
  # GET /ingresos/1.xml
  def show
    @ingreso = Ingreso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ingreso }
    end
  end

  # GET /ingresos/new
  # GET /ingresos/new.xml
  def new
    @ingreso = Ingreso.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ingreso }
    end
  end

  # GET /ingresos/1/edit
  def edit
    @ingreso = Ingreso.find(params[:id])
  end

  # POST /ingresos
  # POST /ingresos.xml
  def create
    @ingreso = Ingreso.new(params[:ingreso])

    respond_to do |format|
      if @ingreso.save
        format.html { redirect_to(@ingreso, :notice => 'Ingreso was successfully created.') }
        format.xml  { render :xml => @ingreso, :status => :created, :location => @ingreso }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ingreso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ingresos/1
  # PUT /ingresos/1.xml
  def update
    @ingreso = Ingreso.find(params[:id])

    respond_to do |format|
      if @ingreso.update_attributes(params[:ingreso])
        format.html { redirect_to(@ingreso, :notice => 'Ingreso was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ingreso.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ingresos/1
  # DELETE /ingresos/1.xml
  def destroy
    @ingreso = Ingreso.find(params[:id])
    @ingreso.destroy

    respond_to do |format|
      format.html { redirect_to(ingresos_url) }
      format.xml  { head :ok }
    end
  end
end
