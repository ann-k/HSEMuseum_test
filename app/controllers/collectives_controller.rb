class CollectivesController < ApplicationController
  before_action :set_collective, only: [:show, :edit, :update, :destroy]

  # GET /collectives
  # GET /collectives.json
  def index
    @collectives = Collective.all
  end

  # GET /collectives/1
  # GET /collectives/1.json
  def show
  end

  # GET /collectives/new
  def new
    @collective = Collective.new
  end

  # GET /collectives/1/edit
  def edit
  end

  # POST /collectives
  # POST /collectives.json
  def create
    @collective = Collective.new(collective_params)

    respond_to do |format|
      if @collective.save
        format.html { redirect_to @collective, notice: 'Collective was successfully created.' }
        format.json { render :show, status: :created, location: @collective }
      else
        format.html { render :new }
        format.json { render json: @collective.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collectives/1
  # PATCH/PUT /collectives/1.json
  def update
    respond_to do |format|
      if @collective.update(collective_params)
        format.html { redirect_to @collective, notice: 'Collective was successfully updated.' }
        format.json { render :show, status: :ok, location: @collective }
      else
        format.html { render :edit }
        format.json { render json: @collective.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectives/1
  # DELETE /collectives/1.json
  def destroy
    @collective.destroy
    respond_to do |format|
      format.html { redirect_to collectives_url, notice: 'Collective was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collective
      @collective = Collective.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collective_params
      params.require(:collective).permit(:name, :created, :broke_up, :bio, :style)
    end
end
