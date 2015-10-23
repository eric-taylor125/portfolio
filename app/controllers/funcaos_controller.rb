class FuncaosController < ApplicationController
  before_action :set_funcao, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @funcaos = Funcao.all
    respond_with(@funcaos)
  end

  def show
    respond_with(@funcao)
  end

  def new
    @funcao = Funcao.new
    respond_with(@funcao)
  end

  def edit
  end

  def create
    @funcao = Funcao.new(funcao_params)
    @funcao.save
    respond_with(@funcao)
  end

  def update
    @funcao.update(funcao_params)
    respond_with(@funcao)
  end

  def destroy
    @funcao.destroy
    respond_with(@funcao)
  end

  private
    def set_funcao
      @funcao = Funcao.find(params[:id])
    end

    def funcao_params
      params.require(:funcao).permit(:nome)
    end
end
