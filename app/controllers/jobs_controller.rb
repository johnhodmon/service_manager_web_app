class JobsController < ApplicationController
    include JobsHelper
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    if logged_in?
   if(current_user.type="Engineer")
        @jobs = Job.where("engineer_id=#{current_user.id} AND allocation_date LIKE '%#{params[:allocation_date]}%'")
      elsif (current_user.type="OfficeAdministrator")
        @jobs = Job.all
    
      end
  else
    redirect_to login_path
  end
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
     if logged_in?      
     @jobs = Job.all

        if (params[:search] && params[:search_type]=="name")     
          @jobs=jobsCustomerNameSearch(params[:search],@jobs)
        elsif (params[:search] && params[:search_type]=="date")
          @jobs=jobsDateSearch(params[:search],@jobs)
        else
          @jobs = Job.all
    end

    else
    redirect_to login_path
    end
    end


  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit

  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        engineer=User.find(job_params[:engineer_id])
        gcm = GCM.new("AIzaSyDvGJ0YFIwP6zeqCJZW0WX_Z9A9CC6lxmQ")
        registration_ids = [engineer.gms_token]
        gcm.send(registration_ids, {data: {message: "New Job Allocated",id:@job.id}})  
        format.html { redirect_to customer_path(id:1)}
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|

      if @job.update(job_params)
        engineer=User.find(job_params[:engineer_id])
        gcm = GCM.new("AIzaSyDvGJ0YFIwP6zeqCJZW0WX_Z9A9CC6lxmQ")
        registration_ids = [engineer.gms_token]
        gcm.send(registration_ids, {data: {message: "New Job Allocated For",id:@job.id}})
        format.html { redirect_to @job}
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    redirect_to job_path(id:Job.all[0].id)
    
 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:id,:reported_fault, :travel_time, :labour_time, :customer_product_id,
       :engineer_id,:status,:travel_start,:travel_end,:labour_start,:labour_end,:cust_sig,:created_at)
    end
end
