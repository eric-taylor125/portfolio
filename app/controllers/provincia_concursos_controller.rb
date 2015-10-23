class ProvinciaConcursosController < ApplicationController
  before_action :set_provincia_concurso, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @provincia_concursos = ProvinciaConcurso.all
    respond_with(@provincia_concursos)
  end

  def show
    respond_with(@provincia_concurso)
  end

  def new
    @provincia_concurso = ProvinciaConcurso.new
    respond_with(@provincia_concurso)
  end

  def edit
  end

  def create
    @provincia_concurso = ProvinciaConcurso.new(provincia_concurso_params)
    @provincia_concurso.save
    respond_with(@provincia_concurso)
  end

  def update
    @provincia_concurso.update(provincia_concurso_params)
    respond_with(@provincia_concurso)
  end

  def destroy
    @provincia_concurso.destroy
    respond_with(@provincia_concurso)
  end

  private
    def set_provincia_concurso
      @provincia_concurso = ProvinciaConcurso.find(params[:id])
    end

    def provincia_concurso_params
      params.require(:provincia_concurso).permit(:id_provincia, :id_concurso)
    end
end
