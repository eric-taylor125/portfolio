class CurriculosController < ApplicationController
  before_action :set_curriculo, only: [:show, :edit, :update, :destroy]

  # GET /curriculos
  # GET /curriculos.json
  def index
    @curriculos = Curriculo.all
  end

  # GET /curriculos/1
  # GET /curriculos/1.json
  def show
  end

  # GET /curriculos/new
  def new
    @curriculo = Curriculo.new
  end

  # GET /curriculos/1/edit
  def edit
  end

  # POST /curriculos
  # POST /curriculos.json
  def create
    @curriculo = Curriculo.new(curriculo_params)

    respond_to do |format|
      if @curriculo.save
        format.html { redirect_to @curriculo, notice: 'Curriculo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @curriculo }
      else
        format.html { render action: 'new' }
        format.json { render json: @curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curriculos/1
  # PATCH/PUT /curriculos/1.json
  def update
    respond_to do |format|
      if @curriculo.update(curriculo_params)
        format.html { redirect_to @curriculo, notice: 'Curriculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @curriculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculos/1
  # DELETE /curriculos/1.json
  def destroy
    @curriculo.destroy
    respond_to do |format|
      format.html { redirect_to curriculos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculo
      @curriculo = Curriculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculo_params
      params.require(:curriculo).permit(:nome, :morada, :telefone, :email, :documento_identificacao, :N_documento_identificacao, :habilitacoes_literarias, :Experiencia_Profissional, :Linguas, :ID_Usuario, :ID_Concurso, :ID_Estado_curriculo)
    end
end
