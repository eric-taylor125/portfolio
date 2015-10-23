class FuncaoConcursosController < ApplicationController
  before_action :set_funcao_concurso, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @funcao_concursos = FuncaoConcurso.all
    respond_with(@funcao_concursos)
  end

  def show
    respond_with(@funcao_concurso)
  end

  def new
    @funcao_concurso = FuncaoConcurso.new
    respond_with(@funcao_concurso)
  end

  def edit
  end

  def create
    @funcao_concurso = FuncaoConcurso.new(funcao_concurso_params)
    @funcao_concurso.save
    respond_with(@funcao_concurso)
  end

  def update
    @funcao_concurso.update(funcao_concurso_params)
    respond_with(@funcao_concurso)
  end

  def destroy
    @funcao_concurso.destroy
    respond_with(@funcao_concurso)
  end

  private
    def set_funcao_concurso
      @funcao_concurso = FuncaoConcurso.find(params[:id])
    end

    def funcao_concurso_params
      params.require(:funcao_concurso).permit(:id_funcao, :id_concurso)
    end
end
