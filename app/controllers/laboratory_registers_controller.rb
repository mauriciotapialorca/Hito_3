class LaboratoryRegistersController < ApplicationController
  before_action :set_laboratory_register, only: %i[ show edit update destroy ]

  # GET /laboratory_registers or /laboratory_registers.json
  def index
    @laboratory_registers = LaboratoryRegister.all
  end

  # GET /laboratory_registers/1 or /laboratory_registers/1.json
  def show
  end

  # GET /laboratory_registers/new
  def new
    @laboratory_register = LaboratoryRegister.new
  end

  # GET /laboratory_registers/1/edit
  def edit
  end

  # POST /laboratory_registers or /laboratory_registers.json
  def create
    @laboratory_register = LaboratoryRegister.new(laboratory_register_params)

    respond_to do |format|
      if @laboratory_register.save
        format.html { redirect_to laboratory_register_url(@laboratory_register), notice: "Laboratory register was successfully created." }
        format.json { render :show, status: :created, location: @laboratory_register }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @laboratory_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratory_registers/1 or /laboratory_registers/1.json
  def update
    respond_to do |format|
      if @laboratory_register.update(laboratory_register_params)
        format.html { redirect_to laboratory_register_url(@laboratory_register), notice: "Laboratory register was successfully updated." }
        format.json { render :show, status: :ok, location: @laboratory_register }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @laboratory_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratory_registers/1 or /laboratory_registers/1.json
  def destroy
    @laboratory_register.destroy

    respond_to do |format|
      format.html { redirect_to laboratory_registers_url, notice: "Laboratory register was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratory_register
      @laboratory_register = LaboratoryRegister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laboratory_register_params
      params.require(:laboratory_register).permit(:number_laboratory, :description)
    end
end
