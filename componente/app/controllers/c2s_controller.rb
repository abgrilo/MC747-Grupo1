class C2sController < ApplicationController
  # GET /c2s
  # GET /c2s.xml
  def index
    @c2s = C2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @c2s }
    end
  end

  # GET /c2s/1
  # GET /c2s/1.xml
  def show
    @c2 = C2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @c2 }
    end
  end

  # GET /c2s/new
  # GET /c2s/new.xml
  def new
    @c2 = C2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @c2 }
    end
  end

  # GET /c2s/1/edit
  def edit
    @c2 = C2.find(params[:id])
  end

  # POST /c2s
  # POST /c2s.xml
  def create
    @c2 = C2.new(params[:c2])

    respond_to do |format|
      if @c2.save
        format.html { redirect_to(@c2, :notice => 'C2 was successfully created.') }
        format.xml  { render :xml => @c2, :status => :created, :location => @c2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @c2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /c2s/1
  # PUT /c2s/1.xml
  def update
    @c2 = C2.find(params[:id])

    respond_to do |format|
      if @c2.update_attributes(params[:c2])
        format.html { redirect_to(@c2, :notice => 'C2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @c2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /c2s/1
  # DELETE /c2s/1.xml
  def destroy
    @c2 = C2.find(params[:id])
    @c2.destroy

    respond_to do |format|
      format.html { redirect_to(c2s_url) }
      format.xml  { head :ok }
    end
  end
end
