class UsersQualificationsController < ApplicationController
  # GET /users_qualifications
  # GET /users_qualifications.json
  def index
    @users_qualifications = UsersQualification.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users_qualifications }
    end
  end

  # GET /users_qualifications/1
  # GET /users_qualifications/1.json
  def show
    @users_qualification = UsersQualification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @users_qualification }
    end
  end

  # GET /users_qualifications/new
  # GET /users_qualifications/new.json
  def new
    @users_qualification = UsersQualification.new
    @qualifications = Qualification.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @users_qualification }
    end
  end

  # GET /users_qualifications/1/edit
  def edit
    @users_qualification = UsersQualification.find(params[:id])
  end

  # POST /users_qualifications
  # POST /users_qualifications.json
  def create
    @users_qualification = UsersQualification.new(params[:users_qualification])
    @users_qualification.user_id = current_user.id
    @users_qualification.qualification_id = params[:qualification_id]

    respond_to do |format|
      if @users_qualification.save
        format.html { redirect_to @users_qualification, notice: 'Users qualification was successfully created.' }
        format.json { render json: @users_qualification, status: :created, location: @users_qualification }
      else
        format.html { render action: "new" }
        format.json { render json: @users_qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users_qualifications/1
  # PUT /users_qualifications/1.json
  def update
    @users_qualification = UsersQualification.find(params[:id])

    respond_to do |format|
      if @users_qualification.update_attributes(params[:users_qualification])
        format.html { redirect_to @users_qualification, notice: 'Users qualification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users_qualification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_qualifications/1
  # DELETE /users_qualifications/1.json
  def destroy
    @users_qualification = UsersQualification.find(params[:id])
    @users_qualification.destroy

    respond_to do |format|
      format.html { redirect_to users_qualifications_url }
      format.json { head :no_content }
    end
  end
end
