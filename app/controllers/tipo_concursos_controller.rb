class TipoConcursosController < ApplicationController
  before_action :set_tipo_de_concurso, only: [:show, :edit, :update, :destroy]

  # GET /TipoConcursos
  # GET /TipoConcursos.json
  def index
    @tipo_concursos = TipoConcurso.all
  end

  # GET /TipoConcursos/1
  # GET /TipoConcursos/1.json
  def show
  end

  # GET /TipoConcursos/new
  def new
    @tipo_concurso = TipoConcurso.new
  end

  # GET /TipoConcursos/1/edit
  def edit
  end

  # POST /TipoConcursos
  # POST /TipoConcursos.json
  def create
    @tipo_concurso = TipoConcurso.new(tipo_de_concurso_params)

    respond_to do |format|
      if @tipo_concurso.save
        format.html { redirect_to @tipo_concurso, notice: 'Tipo de concurso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_concurso }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_concurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /TipoConcursos/1
  # PATCH/PUT /TipoConcursos/1.json
  def update
    respond_to do |format|
      if @tipo_concurso.update(tipo_de_concurso_params)
        format.html { redirect_to @tipo_concurso, notice: 'Tipo de concurso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_concurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /TipoConcursos/1
  # DELETE /TipoConcursos/1.json
  def destroy
    @tipo_concurso.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_concursos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_concurso
      @tipo_concurso = TipoConcurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_concurso_params
      params.require(:tipo_concurso).permit(:nome)
    end
end
