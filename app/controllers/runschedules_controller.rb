class RunschedulesController < ApplicationController
  before_action :set_runschedule, only: [:show, :edit, :update, :destroy]

  # GET /runschedules
  # GET /runschedules.json
  def index
    @runschedules = Runschedule.all
  end

  # GET /runschedules/1
  # GET /runschedules/1.json
  def show
  end

  # GET /runschedules/new
  def new
    @runschedule = Runschedule.new
  end

  # GET /runschedules/1/edit
  def edit
  end

  # POST /runschedules
  # POST /runschedules.json
  def create
    @runschedule = Runschedule.new(runschedule_params)

    respond_to do |format|
      if @runschedule.save
        format.html { redirect_to @runschedule, notice: 'Runschedule was successfully created.' }
        format.json { render :show, status: :created, location: @runschedule }
      else
        format.html { render :new }
        format.json { render json: @runschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /runschedules/1
  # PATCH/PUT /runschedules/1.json
  def update
    respond_to do |format|
      if @runschedule.update(runschedule_params)
        format.html { redirect_to @runschedule, notice: 'Runschedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @runschedule }
      else
        format.html { render :edit }
        format.json { render json: @runschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runschedules/1
  # DELETE /runschedules/1.json
  def destroy
    @runschedule.destroy
    respond_to do |format|
      format.html { redirect_to runschedules_url, notice: 'Runschedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_runschedule
      @runschedule = Runschedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def runschedule_params
      params.require(:runschedule).permit(:newarrtime, :newdepttime, :newplatformnum)
    end
end
