class BbsController < ApplicationController
  # GET /bbs
  # GET /bbs.json
  def index
    @bbs = Bb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bbs }
    end
  end

  # GET /bbs/1
  # GET /bbs/1.json
  def show
    @bb = Bb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bb }
    end
  end

  # GET /bbs/new
  # GET /bbs/new.json
  def new
    @bb = Bb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bb }
    end
  end

  # GET /bbs/1/edit
  def edit
    @bb = Bb.find(params[:id])
  end

  # POST /bbs
  # POST /bbs.json
  def create
    @bb = Bb.new(params[:bb])

    respond_to do |format|
      if @bb.save
        format.html { redirect_to @bb, notice: 'Bb was successfully created.' }
        format.json { render json: @bb, status: :created, location: @bb }
      else
        format.html { render action: "new" }
        format.json { render json: @bb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bbs/1
  # PUT /bbs/1.json
  def update
    @bb = Bb.find(params[:id])

    respond_to do |format|
      if @bb.update_attributes(params[:bb])
        format.html { redirect_to @bb, notice: 'Bb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bbs/1
  # DELETE /bbs/1.json
  def destroy
    @bb = Bb.find(params[:id])
    @bb.destroy

    respond_to do |format|
      format.html { redirect_to bbs_url }
      format.json { head :no_content }
    end
  end
end
