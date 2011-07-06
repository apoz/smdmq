class JornadasController < ApplicationController
	load_and_authorize_resource
	before_filter :authenticate_user!
  # GET /jornadas
  # GET /jornadas.xml
  def index
    @jornadas = Jornada.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jornadas }
    end
  end

  # GET /jornadas/1
  # GET /jornadas/1.xml
  def show
    @jornada = Jornada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jornada }
    end
  end

  # GET /jornadas/new
  # GET /jornadas/new.xml
  def new
    @jornada = Jornada.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jornada }
    end
  end

  # GET /jornadas/1/edit
  def edit
    @jornada = Jornada.find(params[:id])
  end

  # POST /jornadas
  # POST /jornadas.xml
  def create
    @jornada = Jornada.new(params[:jornada])

    respond_to do |format|
      if @jornada.save
        format.html { redirect_to(@jornada, :notice => 'Jornada was successfully created.') }
        format.xml  { render :xml => @jornada, :status => :created, :location => @jornada }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jornada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jornadas/1
  # PUT /jornadas/1.xml
  def update
    @jornada = Jornada.find(params[:id])

    respond_to do |format|
      if @jornada.update_attributes(params[:jornada])
        format.html { redirect_to(@jornada, :notice => 'Jornada was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jornada.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jornadas/1
  # DELETE /jornadas/1.xml
  def destroy
    @jornada = Jornada.find(params[:id])
    @jornada.destroy

    respond_to do |format|
      format.html { redirect_to(jornadas_url) }
      format.xml  { head :ok }
    end
  end
end
