class PrisonsController < ApplicationController
  before_action :set_prison, only: [:show, :edit, :update, :destroy]

  # GET /prisons
  # GET /prisons.json
  def index
    @prisons = Prison.all
  end

  # GET /prisons/1
  # GET /prisons/1.json
  def show
  end

  # GET /prisons/new
  def new
    @prison = Prison.new
    @prison.criminals.new
  end

  # GET /prisons/1/edit
  def edit
  end

  # POST /prisons
  # POST /prisons.json
  def create
    @prison = Prison.new(prison_params)

    respond_to do |format|
      if @prison.save
        format.html { redirect_to @prison, notice: 'Prison was successfully created.' }
        format.json { render :show, status: :created, location: @prison }
      else
        format.html { render :new }
        format.json { render json: @prison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prisons/1
  # PATCH/PUT /prisons/1.json
  def update
    respond_to do |format|
      if @prison.update(prison_params)
        format.html { redirect_to @prison, notice: 'Prison was successfully updated.' }
        format.json { render :show, status: :ok, location: @prison }
      else
        format.html { render :edit }
        format.json { render json: @prison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prisons/1
  # DELETE /prisons/1.json
  def destroy
    @prison.destroy
    respond_to do |format|
      format.html { redirect_to prisons_url, notice: 'Prison was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prison
      @prison = Prison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prison_params
      params.require(:prison).permit(:name, criminal_ids:[])
    end
end
