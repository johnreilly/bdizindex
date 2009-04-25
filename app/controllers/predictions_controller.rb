class PredictionsController < ApplicationController
  # GET /predictions
  # GET /predictions.xml
  def index
    @predictions = Prediction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @predictions }
    end
  end

  # GET /predictions/1
  # GET /predictions/1.xml
  def show
    @prediction = Prediction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prediction }
    end
  end

  # GET /predictions/new
  # GET /predictions/new.xml
  def new
    @prediction = Prediction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prediction }
    end
  end

  # GET /predictions/1/edit
  def edit
    @prediction = Prediction.find(params[:id])
  end

  # POST /predictions
  # POST /predictions.xml
  def create
    @prediction = Prediction.new(params[:prediction])

    respond_to do |format|
      if @prediction.save
        flash[:notice] = 'Prediction was successfully created.'
        format.html { redirect_to(@prediction) }
        format.xml  { render :xml => @prediction, :status => :created, :location => @prediction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prediction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /predictions/1
  # PUT /predictions/1.xml
  def update
    @prediction = Prediction.find(params[:id])

    respond_to do |format|
      if @prediction.update_attributes(params[:prediction])
        flash[:notice] = 'Prediction was successfully updated.'
        format.html { redirect_to(@prediction) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prediction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /predictions/1
  # DELETE /predictions/1.xml
  def destroy
    @prediction = Prediction.find(params[:id])
    @prediction.destroy

    respond_to do |format|
      format.html { redirect_to(predictions_url) }
      format.xml  { head :ok }
    end
  end
end
