class PartListsController < ApplicationController
  before_action :set_part_list, only: [:show, :edit, :update, :destroy]

  # GET /part_lists
  # GET /part_lists.json
  def index
    @part_lists = PartList.all
  end

  # GET /part_lists/1
  # GET /part_lists/1.json
  def show
  end

  # GET /part_lists/new
  def new
    @part_list = PartList.new
  end

  # GET /part_lists/1/edit
  def edit
  end

  # POST /part_lists
  # POST /part_lists.json
  def create
    @part_list = PartList.new(part_list_params)

    respond_to do |format|
      if @part_list.save
        format.html { redirect_to product_path(id:params[:product_id])}
        format.json { render :show, status: :created, location: @part_list }
      else
        format.html { render :new }
        format.json { render json: @part_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_lists/1
  # PATCH/PUT /part_lists/1.json
  def update
    respond_to do |format|
      if @part_list.update(part_list_params)
        format.html { redirect_to @part_list, notice: 'Part list was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_list }
      else
        format.html { render :edit }
        format.json { render json: @part_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_lists/1
  # DELETE /part_lists/1.json
  def destroy
    @part_list.destroy
    respond_to do |format|
      format.html { redirect_to part_lists_url, notice: 'Part list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_list
      @part_list = PartList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_list_params
      params.require(:part_list).permit(:product_id, :part_id, :quantity)
    end
end
