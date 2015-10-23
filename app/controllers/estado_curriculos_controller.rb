class EstadoCurriculosController < ApplicationController
  before_action :set_estado_do_curriculo, only: [:show, :edit, :update, :destroy]

  # GET /EstadoCurriculos
  # GET /EstadoCurriculos.json
  def index
    @estado_curriculos = EstadoCurriculo.all
  end

  # GET /EstadoCurriculos/1
  # GET /EstadoCurriculos/1.json
  def show
  end

  # GET /EstadoCurriculos/new
  def new
    @estado_curriculo = EstadoCurriculo.new
  end

  # GET /EstadoCurriculos/1/edit
  def edit
  end

  # POST /EstadoCurriculos
  # POST /EstadoCurriculos.json
  def create
    @estado_curriculo = EstadoCurriculo.new(estado_do_curriculo_params)

    respond_to do |format|
      if @estado_curriculo.save
        format.html { redirect_to @estado_curriculo, notice: 'Estado do curriculo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @estado_curriculo }
      else
        format.html { render action: 'new' }
        format.json { render json: @estado_curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /EstadoCurriculos/1
  # PATCH/PUT /EstadoCurriculos/1.json
  def update
    respond_to do |format|
      if @estado_curriculo.update(estado_do_curriculo_params)
        format.html { redirect_to @estado_curriculo, notice: 'Estado do curriculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @estado_curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /EstadoCurriculos/1
  # DELETE /EstadoCurriculos/1.json
  def destroy
    @estado_curriculo.destroy
    respond_to do |format|
      format.html { redirect_to estado_do_curriculos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_do_curriculo
      @estado_curriculo = EstadoCurriculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_do_curriculo_params
      params.require(:estado_curriculo).permit(:nome)
    end
end
