class MachineModelsController < ApplicationController
  before_action :set_machine_model, only: [:show, :edit, :update, :destroy]

  # GET /machine_models
  # GET /machine_models.json
  def index
    @machine_models = MachineModel.all
  end

  # GET /machine_models/1
  # GET /machine_models/1.json
  def show
  end

  # GET /machine_models/new
  def new
    @machine_model = MachineModel.new
  end

  # GET /machine_models/1/edit
  def edit
  end

  # POST /machine_models
  # POST /machine_models.json
  def create
    @machine_model = MachineModel.new(machine_model_params)

    respond_to do |format|
      if @machine_model.save
        format.html { redirect_to @machine_model, notice: 'Machine model was successfully created.' }
        format.json { render :show, status: :created, location: @machine_model }
      else
        format.html { render :new }
        format.json { render json: @machine_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_models/1
  # PATCH/PUT /machine_models/1.json
  def update
    respond_to do |format|
      if @machine_model.update(machine_model_params)
        format.html { redirect_to @machine_model, notice: 'Machine model was successfully updated.' }
        format.json { render :show, status: :ok, location: @machine_model }
      else
        format.html { render :edit }
        format.json { render json: @machine_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_models/1
  # DELETE /machine_models/1.json
  def destroy
    @machine_model.destroy
    respond_to do |format|
      format.html { redirect_to machine_models_url, notice: 'Machine model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_model
      @machine_model = MachineModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_model_params
      params[:machine_model]
    end
end
