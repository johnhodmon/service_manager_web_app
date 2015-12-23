class JobPartsController < ApplicationController
  before_action :set_job_part, only: [:show, :edit, :update, :destroy]

  # GET /job_parts
  # GET /job_parts.json
  def index
    @job_parts = JobPart.all
  end

  # GET /job_parts/1
  # GET /job_parts/1.json
  def show
  end

  # GET /job_parts/new
  def new
    @job_part = JobPart.new
  end

  # GET /job_parts/1/edit
  def edit
  end

  # POST /job_parts
  # POST /job_parts.json
  def create
    @job_part = JobPart.new(job_part_params)
    if @job_part.save
      
    redirect_to job_path(id:params[:job_id])
end
 
  end

  # PATCH/PUT /job_parts/1
  # PATCH/PUT /job_parts/1.json
  def update
    respond_to do |format|
      if @job_part.update(job_part_params)
        format.html { redirect_to @job_part, notice: 'Job part was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_part }
      else
        format.html { render :edit }
        format.json { render json: @job_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_parts/1
  # DELETE /job_parts/1.json
def destroy 
  @job_part.destroy 

    redirect_to job_path(id:params[:job_id])
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_part
      @job_part = JobPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_part_params
      params.require(:job_part).permit(:job_id, :part_id, :quantity)
    end
end
