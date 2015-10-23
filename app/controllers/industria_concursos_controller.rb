class IndustriaConcursosController < ApplicationController
  before_action :set_industria_concurso, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @industria_concursos = IndustriaConcurso.all
    respond_with(@industria_concursos)
  end

  def show
    respond_with(@industria_concurso)
  end

  def new
    @industria_concurso = IndustriaConcurso.new
    respond_with(@industria_concurso)
  end

  def edit
  end

  def create
    @industria_concurso = IndustriaConcurso.new(industria_concurso_params)
    @industria_concurso.save
    respond_with(@industria_concurso)
  end

  def update
    @industria_concurso.update(industria_concurso_params)
    respond_with(@industria_concurso)
  end

  def destroy
    @industria_concurso.destroy
    respond_with(@industria_concurso)
  end

  private
    def set_industria_concurso
      @industria_concurso = IndustriaConcurso.find(params[:id])
    end

    def industria_concurso_params
      params.require(:industria_concurso).permit(:id_industria, :id_concurso)
    end
end
