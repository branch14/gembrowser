class GemmsController < ApplicationController
  # GET /gemms
  # GET /gemms.xml
  def index
    @gemms = Gemm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gemms }
    end
  end

  # GET /gemms/1
  # GET /gemms/1.xml
  def show
    @gemm = Gemm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gemm }
    end
  end

  # GET /gemms/new
  # GET /gemms/new.xml
  def new
    @gemm = Gemm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gemm }
    end
  end

  # GET /gemms/1/edit
  def edit
    @gemm = Gemm.find(params[:id])
  end

  # POST /gemms
  # POST /gemms.xml
  def create
    @gemm = Gemm.new(params[:gemm])

    respond_to do |format|
      if @gemm.save
        flash[:notice] = 'Gemm was successfully created.'
        format.html { redirect_to(@gemm) }
        format.xml  { render :xml => @gemm, :status => :created, :location => @gemm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gemm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gemms/1
  # PUT /gemms/1.xml
  def update
    @gemm = Gemm.find(params[:id])

    respond_to do |format|
      if @gemm.update_attributes(params[:gemm])
        flash[:notice] = 'Gemm was successfully updated.'
        format.html { redirect_to(@gemm) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gemm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gemms/1
  # DELETE /gemms/1.xml
  def destroy
    @gemm = Gemm.find(params[:id])
    @gemm.destroy

    respond_to do |format|
      format.html { redirect_to(gemms_url) }
      format.xml  { head :ok }
    end
  end
end
