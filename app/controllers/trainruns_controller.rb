class TrainrunsController < ApplicationController
  before_action :set_trainrun, only: [:show, :edit, :update, :destroy]

  # GET /trainruns
  # GET /trainruns.json
  def index
    @trainruns = Trainrun.all
  end

  # GET /trainruns/1
  # GET /trainruns/1.json
  def show
  end

  # GET /trainruns/new
  def new
    @trainrun = Trainrun.new
  end

  # GET /trainruns/1/edit
  def edit
  end

  # POST /trainruns
  # POST /trainruns.json
  def create
    @trainrun = Trainrun.new(trainrun_params)

    respond_to do |format|
      if @trainrun.save
        format.html { redirect_to @trainrun, notice: 'Trainrun was successfully created.' }
        format.json { render :show, status: :created, location: @trainrun }
      else
        format.html { render :new }
        format.json { render json: @trainrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainruns/1
  # PATCH/PUT /trainruns/1.json
  def update
    respond_to do |format|
      if @trainrun.update(trainrun_params)
        format.html { redirect_to @trainrun, notice: 'Trainrun was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainrun }
      else
        format.html { render :edit }
        format.json { render json: @trainrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainruns/1
  # DELETE /trainruns/1.json
  def destroy
    @trainrun.destroy
    respond_to do |format|
      format.html { redirect_to trainruns_url, notice: 'Trainrun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainrun
      @trainrun = Trainrun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainrun_params
      params.require(:trainrun).permit(:status, :date, :trainnum)
    end
end
