class SizingsController < ApplicationController
  # GET /sizings
  # GET /sizings.json
  def index
    @sizings = Sizing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sizings }
    end
  end

  # GET /sizings/1
  # GET /sizings/1.json
  def show
    @sizing = Sizing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sizing }
    end
  end

  # GET /sizings/new
  # GET /sizings/new.json
  def new
    @sizing = Sizing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sizing }
    end
  end

  # GET /sizings/1/edit
  def edit
    @sizing = Sizing.find(params[:id])
  end

  # POST /sizings
  # POST /sizings.json
  def create
    @sizing = Sizing.new(params[:sizing])

    respond_to do |format|
      if @sizing.save
        format.html { redirect_to @sizing, notice: 'Sizing was successfully created.' }
        format.json { render json: @sizing, status: :created, location: @sizing }
      else
        format.html { render action: "new" }
        format.json { render json: @sizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sizings/1
  # PUT /sizings/1.json
  def update
    @sizing = Sizing.find(params[:id])

    respond_to do |format|
      if @sizing.update_attributes(params[:sizing])
        format.html { redirect_to @sizing, notice: 'Sizing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sizings/1
  # DELETE /sizings/1.json
  def destroy
    @sizing = Sizing.find(params[:id])
    @sizing.destroy

    respond_to do |format|
      format.html { redirect_to sizings_url }
      format.json { head :no_content }
    end
  end
end
