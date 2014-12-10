class ResumesController < ApplicationController
  before_action :set_resume, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /resumes
  # GET /resumes.json
  def index
    @resumes = Resume.all
    redirect_to root_path
  end

  # GET /resumes/1
  # GET /resumes/1.json
  def show
    redirect_to root_path
  end

  # GET /resumes/new
  def new
    @resume = Resume.new
  end

  # GET /resumes/1/edit
  def edit
    redirect_to root_path
  end

  # POST /resumes
  # POST /resumes.json
  def create
    @resume = Resume.new(resume_params)
    
    respond_to do |format|
      if @resume.save
        ResumeMailer.welcome_email(@resume).deliver
        format.html { redirect_to root_path, notice: 'Resume was successfully send.' }
        format.json { render :show, status: :created, location: @resume }
      else
        format.html { render :new }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumes/1
  # PATCH/PUT /resumes/1.json
  def update
    redirect_to root_path
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: 'Resume was successfully updated.' }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumes/1
  # DELETE /resumes/1.json
  def destroy
    redirect_to root_path
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to resumes_url, notice: 'Resume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resume
      @resume = Resume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resume_params
      params.require(:resume).permit(:full_name, :email_address, :upload_cv)
    end
end
